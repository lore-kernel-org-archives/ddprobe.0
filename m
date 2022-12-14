Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCBCB6121
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 11:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78351C433EF
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 11:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671018687;
	bh=zQZySvDntub2rBiMKtvC9UkUSu/7lwO9PpGW1ouC6U0=;
	h=To:Subject:From:Date:From;
	b=pKSZ+ngHFiMSKPDC5l1GDmbWFTfm81TYdOBCAgXvro8ZVe2Wkhp2/2WAHabA1/v63
	 D+yfnLfTzacT9Vsvk8wB/h7SBEeLEIGvSKeVIB4wS8fEN+1BP23OWgH53IgDyWzPaF
	 ISWrGmFA/8Lur7dUEhI8xE7FKfuIsDWlahME+RyRgJDmQtGSLpVZe1Mhh0sMgINEbA
	 WNPGwf4o4QTmYDFv7S3JIaqEBN5X1jqBoBCJ8ZIzRsK8myNZRNf6AP4NXUlxx7S+bU
	 AkZT5tz8oYtyfK969txOWSeUzT+1Koj/dc4fjYoCC/tWb0u1QdkIjdDenAzRC7XA14
	 +f9MBzD9BPtDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60A28C4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 11:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167101868738.23176.5128447556028482064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bcc36dfa1b26865ea83a8b840ea2496fa408ec2b4f39b45f89bc714f36d6e80
Date: Wed, 14 Dec 2022 11:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671018687
