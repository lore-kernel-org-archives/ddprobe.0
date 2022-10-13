Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE82B4429
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 20:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 668F2C433C1
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 20:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665694253;
	bh=IG0M/XSP52yDO53L0o1U34aMEwybDajsdAvXb8UIzH8=;
	h=To:Subject:From:Date:From;
	b=Y++oLvp6Nwm2ktv5Tagap0ixW1CyFMAe8N6TKAtv7XU/f4zmFFapYFxP0Ym2H1IDt
	 MQ8Z8PxAD3nXSsWhZpuPv+hMGHnrSzZMAcmqpMzpBTtsJ8BfQXPtzShEAYZ9Q2U8H0
	 JMzcilyH22BIJ18aNyI6I4Yg8zyDiBj7nVYC2I6Yth0jsYxJ9lpcGFvo8yZMUobtMU
	 tZn1lS8VCDZJK1PtZCgB7wPCVp88/vjsdMoaz0gbyrpjQ2DFO5//FI6mAoBK8ezd8M
	 EZPGNuC8r97ohq5korSdUVDk5rhTvXjSvPHQdqmjdunQi8FsMRFl4c+9SvCrwllz4n
	 DDenBsVG53iUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50678C4332F
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 20:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166569425332.28333.8582964720724115745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9a034565b9be567a16d0e9f8792f6e5d8c245d1b936ec8dec87fcc671fd0231
Date: Thu, 13 Oct 2022 20:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665694253
