Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C516EA460
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 18:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76096C433C1
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 18:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668795054;
	bh=DQ+asqJDqI4IA6ILwKQZbRfhFBVCQtPrlnTmN1qoh0Y=;
	h=To:Subject:From:Date:From;
	b=CSEhVeGU10tB51LubG85RS43GzcjDoaQRK2lysOzbIFuDd99rAbwrF71Z0rSqGn/y
	 Hcco0tf4LGDQZOlprBG/PugGBDmXnCrsWApQ10DqrV1PNAzUPo3g+v14d16IBZZysS
	 /XWjqvIRgtLCY4Djij/E+/R3kLuvIOpnYNrAK410Cdg2crSmX9CUg9o+gwZ0PaoQ0+
	 y4/BznnDFNEgMWqxJfJoJIb1lumTOcyDjDeCdDfYTglmBi/wAaJacw0fSfxV8/vMGh
	 KFVokpaEBBOtzAK3NOuWXTKvv6qsVAp4Qi7240pxRXMxxJ4s0Szj+juZpzfUg2R+rU
	 B+88m37NN4ipQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 585F9C4332F
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 18:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166879505435.7252.2258776885604372958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3b190246be40c9f7bb54ee22a6e98a21297f97f9afe20d5b204be8e521b4a49
Date: Fri, 18 Nov 2022 18:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668795054
