Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F2815383B
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734071754; cv=none; b=oXhzknqOVDkb7Uic5vXLoRl+A4MdBkP5aiZyOpBPcjBpr0S7rUux+xALfAwwQHz8xCUObw38fyqc0NfQnYlI5kXxuwZn2yuHoDG32BWWDBRK4XyMnESXeMXACUnxoks5Xwfwj5pURzIM1LHR7+sAoi42oS3QzOrwCP39GzCtzgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734071754; c=relaxed/simple;
	bh=simWdMHFTy4UtaUnS01NglBsDqCiWiAUGrNIZki1qns=;
	h=To:Subject:From:Message-Id:Date; b=M4+EDmspAodc+X1OVh8wHG8S1axPWiS6B1LDZ85U69kFfkl27+l5y89rmtQkDAS0P0q6F7Ykx7cGT4zXV5CcigKC0eS46jNZo80UiVEbzbESBHxvzk2P/eMi64OaLtC4uXjbH2VhOgKp0tUYYvpovfnKNAxY7Auv0FcuHsbXJVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s4QQWO+4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s4QQWO+4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C71D6C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734071753;
	bh=simWdMHFTy4UtaUnS01NglBsDqCiWiAUGrNIZki1qns=;
	h=To:Subject:From:Date:From;
	b=s4QQWO+4Vs0GJWBOPwv3MR5TD/RhHYYIduT2UjFG6XQGkovZFEdwZFpyYbsM9/DfC
	 0bEn78FcNAb6N4xZtmAUwYEEl1577dKU+8DW7GVjGt2nOHGssgoy9BabBQfXEX/Ey3
	 o9lA8cx1PDOK+Gj4VT87ENVaKHaaoCRnGw7ELVZp6mZBc06QQsO7JI3TqAc7hdhHpX
	 yh2YtHp7j+8dIwgTTPwKrkFiWcllWJtDx6zRGXdlQW8zQFVuJghy9l+KZP7okB/ABb
	 eTUr58MQMJ9x9lP15h60lu/IcZbFiP58Mz11AAi6IN3YJd+tkvvkUzwwIsQHpbFuYo
	 XTC9iDcTVsh8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4B88E77184
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173407175366.17863.17716955676888792315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed99afbd24b17bea02774bb2841ea1d834986e133082114aab0f4647669ef06f
Date: Fri, 13 Dec 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734071753
