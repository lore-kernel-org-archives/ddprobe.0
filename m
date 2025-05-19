Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EBF3A92E
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747687794; cv=none; b=iKfCrBJ05KU2G6LR8uB7Hrvd78bPaoqAleRg9QUvq45c4155W/eRlSKWRwD9Qsrd17CRlEk8aIww+HkDjq4lLVi0fHj55ywu05Nae6H/ddPjtAB+OFStlI4JgYFAXzgXZdRlsNRhp2YY77P1CrUXNyjLK1mMX6yhJNGGWjBCCPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747687794; c=relaxed/simple;
	bh=0SibZ9+Ne7G+wcje6WAdS64GdIvdDqBUk9Ap8nbbwLo=;
	h=To:Subject:From:Message-Id:Date; b=AMc28Ulq9tr0p/XGJjU9ULqMOfeyt27opKWgN6FTRMtj6vipMHPiOArgxRq/yWsukj3vuZYjc+Z0yE1pF/sm9IYsg+9kTSue/20HgwK0SRcvA9fNZ/6dC493y6C5itbRJfz90MPInVAmqMLqwpSOdZJJekYy3vBJ1yyIw8kG1Oo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oqKHug+G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oqKHug+G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4E8C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747687793;
	bh=0SibZ9+Ne7G+wcje6WAdS64GdIvdDqBUk9Ap8nbbwLo=;
	h=To:Subject:From:Date:From;
	b=oqKHug+GdfEeA7WU7W6LW7OfIWjA0hi+wFN72sJdPTQ/LWxquAkcYqoLoqLgkW/XG
	 5486q9hZmJABFqSbl3JnmToxqxbsZxdsKlxN+SnmK/fzZSdoUoxu547i3mAB+RP1MU
	 /ex2XM+huuJ2Z5ENDuRJ30rLK+rKXFJO/rgjp8shMvrOPa9gKr6Vn8d84z1L7gtO0l
	 o0xhCJ6ceDxp4tyQuzwjphpsvsiFjGzYHfJ7wnDAAk80GxT/J0eUJLbY9a2MZSCRND
	 LWUwJ8mfkW6C7CIQbLS7d3yQTz+zjtAjeN98nSsFiWPzjTTGa8iiW9/PC4vGboDAxH
	 g0h9sXpZPDWGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E01C3ABDD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174768779358.11964.5254431710943050528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81cc6f7c48cd007f281418d7afd35c37575649063a561bc4d98900f9475246bb
Date: Mon, 19 May 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747687793
