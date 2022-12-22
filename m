Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFCD715A9
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 02:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76925C433EF
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 02:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671675087;
	bh=STtFchUn2AdO/w2fhNqxDG2dP+Yg9afqta/BoAakRzs=;
	h=To:Subject:From:Date:From;
	b=LuWyoJWQTkbIKHH4wgoop++1YXiJgvbhaatRcirlvWm/twcjYA1u+oLFOIDP3pmoA
	 zyn9BRLcK5Hmm4CL7CTlDrnXUru8Bwa0HDIa5BEdAFEMv+AFG0f02anMIgB72R4jeb
	 PSCr2Xrs02edqoppub9Bm5UuVNLZp909yOBGi4NM1Ep/i1h1P5adQ3mAX6Rq3AV/U6
	 mn+BUeBOnedHCT7SsAR92PvpGD06rhijpMLZXbO11awy8/YsBTBXoT6Kj5ohi2kv5i
	 PAIDRhF/LHJ+zpOZJNr1mo7GgbLnKYQFNqhIGpnkSRQpyGuRA/rhRLOWYClG2nn+RN
	 YyhUsndEMni7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E37AC4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 02:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167167508737.22462.5275406566630445984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0dd4292923b52743d5e1d98b62da119456f2dfc1cb420ddb67d7519c01d7b1e
Date: Thu, 22 Dec 2022 02:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671675087
