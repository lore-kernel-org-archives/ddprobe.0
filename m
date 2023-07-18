Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D6A417FA
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 04:21:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C89BDC433C7
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 04:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689654068;
	bh=FGmzjbV7oTXjL1wMfpIcH4WuxDgr/1ucDVRF7a1CNlk=;
	h=To:Subject:From:Date:From;
	b=e338S8jYgez9GCwg1z9ARHTYoCm4kxdiC93i30aZe4n9SetWOFH2aKOMd2gkIF6TQ
	 D4hYDFxkncPWgfpWZLdqat7cY23vgI1ZV9ivrsC3425l61NaPNrLiy+pQGlcSAKUC3
	 pim2L+PGVO9mXvFd64q5ZPLYjFYooc+pdwwyynHeR5xWeoV101kfp8npjnLba/JM+w
	 tWsEq8EJwnaUMGHlEvBWH4RgYxXztP4HNz8gs8O2gt8t5WL1tztBOt3CR8daE4eW9t
	 gQmQ2vVt8w1iGdm1XSl/6gYaQRdYb6Nrn3Pdv2VmCz1c69ZO9dYqQrH1YsLP7rk5ER
	 bF1JDfp3rxzzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD885EB64DA
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 04:21:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168965406870.11869.8129355425822425684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78a9bf219135a27f4bbaf19ff851c2dbcb168f7a5ae822737cbc01cb0d40b464
Date: Tue, 18 Jul 2023 04:21:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689654068
