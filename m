Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535E816D307
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 18:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714155743; cv=none; b=OX53V/sbzwH8ZwxqYSJcDndZVthrLnLjQ4TWMgunYwVPAt4slQ/tmn60mFrwOIti74S64cSApmVtwY0WOfb3XR8+nGzXDMHMUWHWWZtA9cTAHKOoOYtGek+MondXqIqTB/ohdGjfz/Vl044tDx2mRxFcXuzuRcEX1P8s/qr8LeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714155743; c=relaxed/simple;
	bh=hBnUAcRktBCOtmf3jI2AXse3hdppiDoPM4Zk2AMIdRQ=;
	h=To:Subject:From:Message-Id:Date; b=cC6rD5HUy9e98Z4YZTkk8TCxcAEjl3UsmxKY/3equi0CY74FtV4Z2yCvo5Aq0gQGBCPuARuHZpuSg1FkHJWHHdNwa5z0CE5fIdEr3AlqtXXTZ1wFFLf/p+FjX1m54muzGOYhbuJQHm09waPM0xmxhlc86/JXzgASmqGJVrJf9MA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L7tjXl/1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L7tjXl/1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1072C113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 18:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714155742;
	bh=hBnUAcRktBCOtmf3jI2AXse3hdppiDoPM4Zk2AMIdRQ=;
	h=To:Subject:From:Date:From;
	b=L7tjXl/1Qn2iRv1yYj8lQo1H7woqwVsw5TI3XGGdH/XrZpcKKHJiTy6HdnjzKqrt+
	 Me96vKcJ2dpdp/mkFvSrzzTAUHPAWWSrs1LoP9ylV4/xKRH6bw8kcy1eBXMj4Y5yRb
	 +qG9WOaRKguwq3AnHL3jx7+27L0B3w+MooN/eOizYRnC5bbdPMb+Rq+H3TBCEfKTOZ
	 zgj9M5kmQZ+5baeneY//Vpu1O9Ix/vk+6OQ9r6PDs+N1l2QA+4DMAIpnGOIUXhCv8S
	 tqccfuv3UcY2FtZhG/5Z0b26s2hxWDVUQRo7Fn9xkuaAP+t0jbPJmWFRQBT1BhVhLV
	 C+mWN4f3b62+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA11AC4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 18:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171415574275.32485.3950802024886026508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5d69686de5748ad72273d04f469dbc4c74040ce352cce47610fe1d0ca5ee7ac
Date: Fri, 26 Apr 2024 18:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714155742
