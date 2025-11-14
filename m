Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DF3DBE49
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763099994; cv=none; b=OgkhRQmzJZx890pTxx1n0nO29+UDAJjnoSvrBK6ObMsYFB/kKQK5pXtevsRZQpUNvpggVy7bfwLv59N+lNqRjH8WE2bZK7aKmuqn9DJjKim+CRPGqCCpahTBFevT7uTkouACEVaCvIJQR1l8rOJ0/vAfvs8J+tLXa11dHduM7hM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763099994; c=relaxed/simple;
	bh=I+Juz+/1VRtKF19XCiXbUZl5iG23Izp/Pp4iGqdYidA=;
	h=To:Subject:From:Message-Id:Date; b=nSLC2xdCk+u+N0JH6PZRoL/NQqQ1yZJQTrEcVAzNwH5HWfviuKFInQhmuEXxDGWL36rXNF5Z0oncmA+i4Tcii1Xv1zs5eO3tIv58NdvtjHPgYe0t+tcyGyptneMaw/QysJv5KD0x5n67b6wLh8afD3qOsbYWox4QRwRF4tT/0jg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kcLRoStn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kcLRoStn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB85FC16AAE
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763099993;
	bh=I+Juz+/1VRtKF19XCiXbUZl5iG23Izp/Pp4iGqdYidA=;
	h=To:Subject:From:Date:From;
	b=kcLRoStnRv+59YdL/vtC7PC7tSVUNDTeIWNQ5bt/Jy6Jmyxim/7lTV2hZf4+Tfe5S
	 /yzqhcjAFxB1L7RYC84F//KcwLKX8+s8cSjdPFbSqHlzBegTfikBYf/+FKCIXM9U0n
	 RwJ94WnoCbaZSDRjdc4f1Atj17R0cnRRYQCRf927tDMIi7DNA6z3Fh3Fv+s8W8Ban1
	 OvZmdXk8kX5IPlER+Ny1vAPzmu39LN7b+3Xsoih4K3GXkI4z0AI6FPPW1cyxRTuP7u
	 JUPwxExD0EI9bii0oH8cogjDmY0hQKFc25ZlE5qYKrO71dXaj4YyfH8U9gsK706YAP
	 GmoUnWjT0WWMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 991D2CDB464
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176309999361.25996.3344761452110835356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0317f0b80e932e221919fe368c644120c89fb15a24afc46859fd28594b43f58
Date: Fri, 14 Nov 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763099993
