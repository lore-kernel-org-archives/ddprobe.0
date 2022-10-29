Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EADA17B
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 01:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EB5BC433D6
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 01:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667007654;
	bh=jaFqsB4RH73+6NbVbF1EQobLdhGPMU+7NelZs/pQEI4=;
	h=To:Subject:From:Date:From;
	b=dPwXlrh5bCjdxu0UPN5Qr2ACVrgB6HROe5+37F4TIfs/3j60FfHZ5KAjKIkEAfEoS
	 Yyq8qxdaRDu2vVGTJBxGBhhEkfZJH68WYYZHUZPuo8Yyb7SezzX6bwC8epz2eSDBPe
	 1AcyGeWlRh2asHrgeegoPheHqx0+SOOgOGyHU8wF+gg8Kt8Oa/EAcQO7owV59ToQfu
	 ENO2TFitnlGduoR2EnXR04+r1t7zMKtwma26IPVRlQqx47lbHh//WUaOmxoYsoZeRX
	 ALoTRY0bmQH5f31saFg6zTnAgWTuDiS19/31Q0ymajMAVHu6QT0Tx/s0moyCWT3qhx
	 2b+W69tmFBj2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61E6AC38A02
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 01:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166700765437.20354.13168471013514450928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a656e0f07881929f1f0a524e9158be1d2471bf6b2b1a0d7fa13c652123c6eec7
Date: Sat, 29 Oct 2022 01:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667007654
