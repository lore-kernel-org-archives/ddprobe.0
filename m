Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7EC3D81
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749422994; cv=none; b=hjJnGMfKl412Xtytnbi8F3o9keuB4WF5RIGvt8+FvWBBPGe1cfbRH6j+pnokkZlWx9tPd0K/gWMGLrS9i/WUUgDHG+Bv5Q7NA2D4Q+ygM9iXEKVMtPtUBWvCEOePulT0N5BKHq5X2e/L1Cj+VL7WECPS4hxV4acu2HGhqP1ot0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749422994; c=relaxed/simple;
	bh=t+UPCnCi508A/kjC1HFHtCWSu9O4hd3cqskHUSY2B1Y=;
	h=To:Subject:From:Message-Id:Date; b=WF1GLxlFe+GuVGSUYwm2hdQ9OznAElB6+HVDwekZRj5AYXDyo149wLHEMdW/whHPRL9bT3RckXFfkvrmWBV+RvgmNNT68C9OAskrcZzy2Gx0jpux5Yx3r5MEj9TJ5oKABdxZzZtYYKCTwe8bS0XhOeBXMunvZHU5lRM/DewRfDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U4x71ube; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U4x71ube"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03FFC4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749422993;
	bh=t+UPCnCi508A/kjC1HFHtCWSu9O4hd3cqskHUSY2B1Y=;
	h=To:Subject:From:Date:From;
	b=U4x71ubeDU3vT8VBeVLe1a8rlPaXP+JHX0Gy7kM9v24bPMc/3e59sTcUxsHl3b6of
	 nyTSMnIi3EAUOtZUryZ1/FE8M8YXBiOxZQ36p39Y5bfWFIQywbUDUW8H6MP+M9eoKA
	 eZOyvb3GIVmixSGm6Ixdmb2lOG4B38LsHpN5OARuWG2yoprwTnV13NS9IJK6aU833D
	 Wgw7SVTDychI0jnFagLmwQrejTyroVt184/Vlkjk6zZ9+fZQw9qXNkQ/E+1j2ZZY2H
	 JsU6yS0vH1qpCccvWjtGkxCy4kWWFyjly8bJjvrQZczxTQ5y2RtVlf69rax+pbLfll
	 HyI/bfpS1ZR+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E672C61CE7
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174942299357.8336.4381811884861844762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26dd731e5726cc50ea3da78283f1fe080ccf4b57a95ddaa03a3e2aea5aceffc2
Date: Sun, 08 Jun 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749422993
