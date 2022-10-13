Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C94DA443F
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 23:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79E23C433C1
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 23:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665705053;
	bh=FsMN3G8uhADFPVXunGfPoLbJyQdRC42110Z6QOVDTeU=;
	h=To:Subject:From:Date:From;
	b=MGherDy2QKCBfhinCUdmeesnQcYTLRr60bvvm3Zpw2pyBzRAfPqJ3BhvYT424xV78
	 N+Cj2sOlI3IjeB8cWExZcDyRhG2AEtxdpXTJxamsd9AUk70chIX6kPh6Hz8TnJH4/L
	 mROY52wXo6fbz/XpAp+fjzJSVAh/m4RuuQHLZN/ngFIPEVZxAtLq98KUr+CnM2PhjZ
	 +fFX1nWpoBTmA8ToHJpzhDWzvwmS4tvwcBFuXBnVRRBj6O7gXK33252qvV6uLKoQlj
	 37er1Mi4WXUh4wJeE7ZfayUmiQl9eZ1N8qEWvFZPMVzzNG8UfPO56LR4J5IMJQxA47
	 smFmNFrrV6c/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57CBAC433FE
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 23:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166570505335.1931.13758544056193761869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5f6bd61c207d612f0bd0353e53dfbe18b8a3a26521e6490041415bf07c0b8cc
Date: Thu, 13 Oct 2022 23:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665705053
