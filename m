Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF95D17C2
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 16:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE2CC433D6
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 16:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668012654;
	bh=F0Aoul7JwecpkIIAxiAquBvWnMLt6mitYIVqUccmmbM=;
	h=To:Subject:From:Date:From;
	b=jCd1GmqzXEFkWcXMTVkgCHOKyOKYYq3OAFMDuEg1S+3UGYlpFMwzbf1GkN+QhuaXq
	 P8yIXtuyWz7Yf6kcDSmsQgJz83ECGKsDMSBZmCAozBBImHj1ewFw9r4Bs3IkM1jyr7
	 QuxcIiUhH3tn05LPBLDrPYx3r0znHvMeJmatJtxgWgVBGBUDTn+5C4mDwCi5cQKTwM
	 vdvNIir+vE/eVjAVZvS8QXLGBkI4gYDDtrPzVUQPKURxphes1jtS6PDEZQ3H3PiDAa
	 yr3A3XDZyJXQEI6S6EjcL1a5TwsuUEgu5FW76sS8vjYoVyO3aLX50E1EdSibBmN1kN
	 a4eg2E9V3Kldw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C9B2C4332F
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 16:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166801265449.5933.6760860736767125500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94a1c7bf629ff1de3af9b81e22b027c9bb9cbd4193260985dd77bcb38bf70c33
Date: Wed, 09 Nov 2022 16:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668012654
