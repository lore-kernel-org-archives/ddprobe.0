Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E5E1B6527
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 19:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765047774; cv=none; b=plwh/wEtcZ58RVB4T9r15SjTAXl7Sgsb6jYYc2idqekd8L9peFERkeX3Q2Bi/o+beay9zXvVB7EYNMrl9gczl35in5c3PPw7c/tkMEedbbzsLx1h+MrGzZU3ie7pi2saQHu58a2wfIzUoD+Gp5cuys0cX+qZ9tqRHuSaeAZmlPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765047774; c=relaxed/simple;
	bh=uqVk5vsn2Pyl68GIZn+p/MI3R5n54vUGdiNo2pRDLrU=;
	h=To:Subject:From:Message-Id:Date; b=Ed9fXwPeOsyE8bWKUrZ7zRT4lhZl8wnhVLuBvpuL8tAfCg4iJgdcfP3Yo41EYzHlnySBQDxrMAGCBM/uNIQSc06Tg45W43kzlonLml4Gu80XsfBSsfguy1+VvzRxCyiY3MQADb/W69etN3C1nJ+nEqvNF+vjDrJcG+WXRKzkOrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y0tDnzJ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y0tDnzJ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CA6C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 19:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765047773;
	bh=uqVk5vsn2Pyl68GIZn+p/MI3R5n54vUGdiNo2pRDLrU=;
	h=To:Subject:From:Date:From;
	b=Y0tDnzJ71aXj40x61gSX1quYAiVux+8rWlNZTMy1eOTSVXQ24BdV/2dlpMP3qfhQy
	 ZJM87dHr/fGMGBa4FYyZ8KN4AVOes/M39fPf/gPO3yV5RYrzYbsop5ia/SQMV8vK9A
	 z/EsMWvZpSt8+NzoMKMCe7QCoenH9SM+rlBhDPXdYot+ZHE9/SMq2SAxWIkzAJxqkh
	 WYSTEpZEXlD19TgYpZaXIZVRAOecHYrLUplgd/eRBIoYDri+extVwIQoXPhd239GaS
	 2Y4fF8Sa3enyJTV+eRS7oTDZZU0zFf6fF7kVRE363Qjqgyo/S/698A35JCp6u9mkLp
	 +cw/TCtWYVrOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F62D3B7E0
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 19:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176504777358.3040.11887344926277865205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1d85260c2ed12061561c4d640e9237bfaccaecf2d294a90eda19946d90555f5
Date: Sat, 06 Dec 2025 19:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765047773
