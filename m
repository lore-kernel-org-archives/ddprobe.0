Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C74052CA4
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 11:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76791C433D6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 11:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669374654;
	bh=hxMlgGash9ucwziDu4rePMDnfYOhxllIDYRQlP77JdI=;
	h=To:Subject:From:Date:From;
	b=AFRfJQ6Te+ooIdwcScdyqppOJALUQBQr7POQrfaRdhvHQm8FGisYLbYyKKpt6x+iW
	 ezZaQ1fy4PeSgmbkKyEhN0AH3GozBC03zR/rLLukwLBlqfd0kyGqnJGdr4kL1A/wQO
	 77xRprS6uGFza7XWKZNiTTd2lWAteVI/T+qers/nynqwdGDXU1ZD1uay5lao40wZfS
	 jcRRngaDAvYROtzZqUK9mgeBiJHQOzn5j5DPK3piD+fmFxfkQ5+qRAZ7phxMgJeP62
	 fqtc2THY8QLksXoJHFBKDO4HR9Qh+yJNEPmCd1/pnIRrjiJesva2oUnRyiRfreZwUR
	 A6NlzYOb+CKuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 521D6C4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 11:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166937465432.32593.11625702940016161033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef04e2f9f38b48fc36f2cd1b01463d24256dcb9041c9ec772baba519c6eeb45b
Date: Fri, 25 Nov 2022 11:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669374654
