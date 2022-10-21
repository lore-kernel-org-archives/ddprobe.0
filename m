Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE03F15A8
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 14:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FD41C433D7
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 14:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666363253;
	bh=EfovXYY0m1RobOGShHp29SMzezT6twpI92HzGzlR4XI=;
	h=To:Subject:From:Date:From;
	b=kfxypQGLzV2G6Dq70bF21dN2XLImY8ubY3NKXfrDX1ECe21tB6hXxIPEPRE1O7wt6
	 Vk/I3Dw/dVU3rHgkyTZA0WmjSL45eon+BtZS0bspL5VjVqScd+/FfqSbVsqosTZeKa
	 YhaKADhCW7L5Egxj01wXn/9wyj7Ah78d9q5dNgYQWgSDKhuIOBj+l+mEREB9QMvIMR
	 DmO6VOlznR7SWfX53T/gEHy/bHwxPRPRzsd+dOBksjGGiJQamkCSpA/1jOLvuIGmw2
	 vKVXMLEVCZ/cDPaFFUXRsinQ/u7UZjC4EoTxhhzxdZzbf680LFIbCVLSoytzd2bh4A
	 5muruYJ0zjnAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 538FFC433FE
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 14:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166636325333.9270.10353728930136780410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e24216a03adb731b35e4f75f342bbcaafc4afa7771e9188494cc5d6089a3a25e
Date: Fri, 21 Oct 2022 14:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666363253
