Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE4EF2F2E
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 22:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EFEEC433C1
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 22:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669503054;
	bh=k1vj9BV8u+dnUd/2q7fj/mJwKLIQNzi2jNr9T3tTFY0=;
	h=To:Subject:From:Date:From;
	b=lGWGcvBTQPZC4GUpzWDIoqkY6d8M0I6scWbRFSEEndlLR1eCByW/u0hSxT21OaDd6
	 +y/C3M/D9GqHnsyFhyekGERVWmk/oeaNZdlw8GN/RPkDifS5MB7UogdxHpPDf+G/79
	 w4tFQ1xxN23C7IAhfrt/9/v5R54qYvEsBqxH/TdHnGR5sVxMZscuOksn3c6ENLLSxp
	 zlGOtKcDMA9wq5YhLRsGnVB3+8swLcMAfjHuV6KqG6YAxGu2HGkpz6f7y5Hfrm8fSz
	 Hfimv2wf1FTQdbmBEPRODM0it1eAvldh5jeNrwy5a7mAleioVpTyXJBc1S7lIop6mb
	 luOgVd0KSWEJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55748C43217
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 22:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166950305434.7629.5952680187224735231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abc42f17a03086081ebff3aba9cc04ea08de1f050010ee1bc417e8004aebfa0e
Date: Sat, 26 Nov 2022 22:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669503054
