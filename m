Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 622047F
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 00:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D08B0C433C7
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 00:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688603828;
	bh=50XyQ3WIEaLE5Dpagm6Ss/lVQ7kIBQlurgym6D0Lo3U=;
	h=To:Subject:From:Date:From;
	b=kIyB3jKoLB+wlRQGRPhtKsVND2nEBm1IEi38h2IkGQo5tA7U/vPJrKVvFcxxBmDw2
	 5kuAP0LresVo+vyCI66LOcD2Tw78WaEuYiclIoaiD8xQvHasAdUCqoz6yFqLbrja24
	 V1X9UV73VxeD4yC9jrD+HA+OQaxA+AfcKR2mQ8eRDsKDRRY2bK+6sqVbCMwDy4h3WJ
	 ktf0brhFXIqSiMEVQ700iq63AhsQSp29vM77Vezu56ZIX1ff5KEEtoZ8/H4v/aiHrA
	 MvoxDfzxC9zjAEQI0LlvKgQb1hfsdu4GTgZ+pJw00QdJTyq1t3v4IAGYBAtEluY5yD
	 ziiZF86J0/+Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2C10EB64DA
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 00:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168860382872.16229.6555361291946968540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97364ce32d4bc6b95a7c532f51ab55ef5c860e8ccf2dbee55cda7c50a7ed4015
Date: Thu, 06 Jul 2023 00:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688603828
