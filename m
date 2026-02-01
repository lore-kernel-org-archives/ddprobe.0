Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43AE11F4611
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 03:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769916234; cv=none; b=nyBfrHnmntXBabJ1MMjYp8V9gi4LQZe9XoyJWqz4dmAQjgZy0ZYtQUARLKMKkFqrpp8VMoBSXmhWvmy/cxOU21SFKexppeM+mLaWi+U0aQabH0Bj6Y5Mg1B+NU9LHhsjTwNG0kT3l3hGfbpKoHNmAKxTx65CO1wEQArkwSGqJAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769916234; c=relaxed/simple;
	bh=4AcGaJ1vzB70kLn7IZmQmkDERjTIk+AJpmCeYfv/NGE=;
	h=To:Subject:From:Message-Id:Date; b=g6deG6fVOqlx5HSo0c8YvuUU0pgjRgLSBHXfZfxyu2CWcCM9B7inp8x6HV24cuMQ5awmQ6eUXzIctJVBpDIsGliyWu/7u3dFz1imIXRR69WnUcfoaNcamuRKvYzdO+cv2lD2lnr9y7IQ8CSlKsb4QNlKuDZvCh7Wt3iBaV84Ua0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pq03VGFj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pq03VGFj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A515CC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769916233;
	bh=4AcGaJ1vzB70kLn7IZmQmkDERjTIk+AJpmCeYfv/NGE=;
	h=To:Subject:From:Date:From;
	b=Pq03VGFjziZxXrp0A4SN1kj9ONPejbeeaFDGhi5khOe5LNvRdzR5NHld+pkxk6qLf
	 70TGfTtDgXDoNEiSZltZCH3pEhDnOMJVqkeQkwLhBkVKZh9HIuqbDqt03cwgrRkWHx
	 5XsSoF5KR0h/uMF865EAjJS3smOCMIejUxcAXahyw4k//b9xXbMf3IQkhtYzqecSQL
	 MRYa6cgENRkuD600CT/0wa4NJuOf11yTmvPQfd7S6RdXQUq5LX2wcByqf/giETh7tL
	 b2BA6W7ZeNoYAeMqHWEy8EIeWXwruPLGggYmXezm5jlBa5Ykp1ZjnWVpAW3IAjrEwk
	 bwpTeWBagFIOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B52E7C6F6
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176991623357.5949.1163697209638512642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d80be0a70272c29a8ba0d93817ab01a9331c7cbd2a37c1872acb6b50597f52f
Date: Sun, 01 Feb 2026 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769916233
