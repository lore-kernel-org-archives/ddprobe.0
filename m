Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD2E3A40
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 04:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76898C433C1
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 04:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667537454;
	bh=owwyGtC8nfkbV3AKcvghfi5IN19ND2utXiTYncZHfrI=;
	h=To:Subject:From:Date:From;
	b=M1Tlrk5B1Wqi86Q8kzMAiTwGuTgFKZilB0Rs1Z31xCQ49fHJaslxb7gjEyBF9pgaH
	 1f9qHIVeOXlpEJPZ8sKq3bEy2e278rSGy36xfYhUGumBhksAZbux28/H+rYL3oen1L
	 Y3AqYIq8fI/F+wDqc08uPv71NnjF0FF5Cr1t744jov6YMlo2ffMDWKy2/PNGYYzMJx
	 3jNLLVLSYlVl8fV5y7QC/8slnKwl9tV3J/0F4qiS0/7+91SW3w1gjBaNQWpo68pY3R
	 2uKdgreEAQSdl43OErd7DpQhKZgBzechSJcUh8qTvV/dXd4ho4tzKeMNLowK39y/vf
	 WACfaDAgaBsBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 592BCC4332F
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 04:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166753745434.15761.5077625059113512675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f248efd4296ff24c22ffda84b2b7972b370722f24d4dedc3981282a7e78689f
Date: Fri, 04 Nov 2022 04:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667537454
