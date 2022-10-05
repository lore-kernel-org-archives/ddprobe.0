Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB7C2365
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 05:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A67DC433D6
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 05:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664948453;
	bh=CllFJYjMpnP3s/OakfrIToZAgnVO6dTFYFT1GCj8il0=;
	h=To:Subject:From:Date:From;
	b=i5SKgCu1M9SA/3IK42/WVwqbfnwT36IHfzyr+eCBYzGKo07oXc0j986cQQw36SpZk
	 tf5dCDkAsTeWn59w1FfgK2dhgB5GX1lVsBRZz4JNLY1DEMKEjCtf+QDsE94Naau0+y
	 9ka2Kjl4xDUM+AYOM3wqTxNUx7ru6gWjFt8zKpu0gS2mot5yPgRqRC2wwMCEe0fYRj
	 D2NRRg530SyKwes9serdO9R6DzEaNYFoxLJ4eF9qcpuVtzseylHK/3MtUcUxkRYWDI
	 qmfdxnmY4PFpipfOAQ/1FEj2Ncwb9mEEdOOrERDrg+4J1aKV32fdlDh8Y4CbvVuQPi
	 7Px3vqioYJBoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51BE3C433FE
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 05:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166494845332.12170.17709389910681947327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b46b31a9c6a852e0bf663d657dc137081d5b3a264ac98e0d211217b8415af15a
Date: Wed, 05 Oct 2022 05:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664948453
