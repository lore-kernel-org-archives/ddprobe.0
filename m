Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F970D52B
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 08:51:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD4BDC433C7
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 08:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689756668;
	bh=if2LDJrBIeMBQWovx4Q//rPcQTmb7tWieHO6GOZO5tg=;
	h=To:Subject:From:Date:From;
	b=i2GOxo795+qqvzkAh9TMI/psoCubVQNfK3cvWmn9djJmqVqbjIkYar7Yuu7wR/Irb
	 HzIkMa0w5qQNQR+FXMqpcSdsmps2uas/SA8f+NNerWdznLGIIOhP1+z9gpY/XbPOXK
	 bKDk77BACkJOPFzbolJdLCMNOhZZZ2hrLDINr+EoEzKaDkAhlr3bzKuRHcFGnMVjWO
	 5bkoy3DPgvabl7UDwgdyzjHSi4z9xOS6X2JABHAjNH19PetOnBPAmb2GMR88f3gnkU
	 7Xb09TKpxoMCFcKbdoH014IQmGbVr3VntKCadVTZi00E7MlIbMSTHPUTs+g1pND58D
	 I1v+runeTce1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0911EB64DA
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 08:51:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168975666871.15174.6049271471190490894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc950ba996a16a6e79e9961da6d693879085f75631bb1676686a603e080d13fb
Date: Wed, 19 Jul 2023 08:51:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689756668
