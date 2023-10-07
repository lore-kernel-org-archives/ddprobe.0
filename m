Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D4E518632
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 21:17:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Utm9mjj9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C494DC433C7
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 21:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696713428;
	bh=ySqQS0hIr3NzqJ+K3eMrO/+z/I7ND2u5Ecs2DVDmWps=;
	h=To:Subject:From:Date:From;
	b=Utm9mjj9Cb2esE1dVcBMDpxR2LlwYN3xRvj72+YK2OBIBw1s6ujC4njLWdzCdoHGL
	 h2U9Lv03addhNSJANC4n9GgCc795jw5ybIdYJOSqGy6FLAyN0eUDqmbxi0ivitJOTx
	 OMxARvX8E4BjpIVOinFHAP2B+rKJyAGZIyi2NgUZ19QuL1xHI0miEd8EsrQ0oGAEtI
	 FiUHG8uVCoPTRn8nl/r3RP/Q1WgNrYprIoHxajaATk1Q8zP83JMqWK3J2wLVeq3un2
	 SlKJfKyZFinPAKZdz7Hh9g67RiSlIllr12E6HvvNAcdjeERaOWgev5YC1V4ZDJckSL
	 bND804NwFQUCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A82DAE95A6A
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 21:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169671342868.11601.9369140485875507254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e65aad05d4785c77a8bf4bb1af04a62bbdc144e5a699933b9a7cfa76cad841f
Date: Sat, 07 Oct 2023 21:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696713428
