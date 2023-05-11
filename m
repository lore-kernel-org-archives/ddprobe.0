Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E2A23FDF
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 22:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 053C3C433D2
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 22:44:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683845046;
	bh=6+o0GjeaCrx4uKTc/3+w6iLr1AbiEgc4MrjJ/ulmI9Q=;
	h=To:Subject:From:Date:From;
	b=SMSWcLYXecuZdeMOt4JfrRef3ba7yX43H7qPyhqk85iJZSB6rA7MBqDCgBpGzAw6t
	 qmySAVZtxus0LxoqCE36hrMDvmC8ajcmVDpP+KM78kEGFPbCngo25M/xL20+51bqCx
	 QqKpDi8ZmnxeNpg3FsB/QLZ572MGxxSgbPuft0zijfitCziZQ2aCnp4ypxZt0KLidK
	 RwB/PatZE5Rbey7vnND87G13CR8PjvRPFbGNKFBqeoZyq0Taw1FcdWSPjWU2xV6KNk
	 IN312d3aEb3M0gadgTjlGFOV/ohpbVrVzJfn8JtLIkBTO0pVtV34dL6Te9wkkmvg0F
	 vD0f+WVjiIe7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBE6AC77B7C
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 22:44:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168384504587.11527.5285367429209306412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17ddcf05b22d8c96fb4e4a38ec5173d3c7b500e6cde5f9fa0d224f2e540e7fdc
Date: Thu, 11 May 2023 22:44:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683845045
