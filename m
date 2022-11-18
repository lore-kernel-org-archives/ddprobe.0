Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE1252F43
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 15:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DA78C433B5
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 15:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668783654;
	bh=RQaTpV/uVjl0pGGN+8m1Z7or/p3QZCmYjx7mZCcZyK4=;
	h=To:Subject:From:Date:From;
	b=OHxDB4s4HO4IIrWUtyIsmgDRkuhdhlSCnhIXr7cy4amkSCCsbNhk/Pc+be3I2+i7Q
	 lQTlFwaqE46tF2yRevbNS3392s/grusR2GcEyQKFuZ1TEfxzgZznj1Bu4mF/+pXki9
	 71QL0A4RWuQ40hYZx3pGVNGAQ0XahB6cFnOoJY5oYK6wFAw1wbo2xsDgaTQ/Y+RYVr
	 AL+NLBjsEC5UKu2LE96Prcb0uonVLiYKam77FMfBGDWRTsvGi/n6W1OovhAbkNkaOz
	 rD4EJCmlBXM64oTUhNVpLnw81t97agvFUgRnioB0wa5D1To+LEEyxuO1ZfvidcCVCI
	 H/RT+NPZoZQhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51E06C433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 15:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166878365432.7185.7657902684498208524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3be437a91858119aaa630ccfbc85cc1a252af6c7fc4507b89fd8ec1cbeae55d2
Date: Fri, 18 Nov 2022 15:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668783654
