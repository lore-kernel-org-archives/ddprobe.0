Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218CF171CD
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754525994; cv=none; b=vBsuR1gWyYCLEilliYi5uKiWYgWG7Gi5Vuuqk9QrmVaNEVe2/Gpi6YxRDN9vP2ifvPgt9eGnNo2qp9CsrbKoqxE/2TR+bQwxpMQlYaMZQI1DivyralNyRVTbCMZR6q/F4fZCmRqlb1S0Qy/Azr/1CxuUg/YMtMaIb9mdaNZRlC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754525994; c=relaxed/simple;
	bh=dJppo5zXUqbVnDn3dA7Z9tY1FVKei6Obng6w1Gakgn0=;
	h=To:Subject:From:Message-Id:Date; b=hDYqNUOWW6p6VNC8MuxKFlvGhO8DAuB3fUvbtcTZ0gjGkch/kPhATKXGP27zQKCMUREPHfbDf0lwFl/7koK0sAwGY+yma/Ut0bFkUPsDUWgrvybNZ5G32BpDCqeB1kq6OS+otNnGCSWmOSQ+8Ab832nIn/RgNTBp2Z90tpxCTBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O1r5zAem; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O1r5zAem"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F03AC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754525993;
	bh=dJppo5zXUqbVnDn3dA7Z9tY1FVKei6Obng6w1Gakgn0=;
	h=To:Subject:From:Date:From;
	b=O1r5zAemgLM8sVtRtJZECQux3Z9ENEkmVyfEbGyChraxR06c5Ob//rcs3Jq/oU7mK
	 lp+0dItaakz9frG8gNYZ0Jd46lWDs6G//v8agGyq4yb4moNEpl65tQrCZCdR/8yLh1
	 vSDrJG9E+3k7OPwCzc3NXuDJ/a7DRD5MH/U0insP5DV6i/45QSzEs8dKPnE26JlQtw
	 R8UzjZlfyC90xUdS3s8dQvYBDEHpmuNgrMafWIhaGnblHM/8vARNNsSWYCReS32bgG
	 gpESSD9K3eL00ARjjW/JgNLABuq11dKWTvMIjcX8WIY2IAX+k8kN9rQs/e2EJTZFk1
	 nSgmfm6UQJaHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBB3C87FD3
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175452599358.1543.9752949207442191944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf04a6c6fe46468400ca081bf10767c011c97f1905390b673aeb0892c19921e1
Date: Thu, 07 Aug 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754525993
