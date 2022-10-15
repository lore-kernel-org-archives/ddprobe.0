Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA5A3363
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 18:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F037C433C1
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 18:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665859853;
	bh=sSL9qfT6Xzed35JCQIF3PWTNZ2/poYSiTmVN67H6p3Q=;
	h=To:Subject:From:Date:From;
	b=CMTQewPjmxMu1NNa7s3J3mCyBp2HzhbVw+7ZHG4Z0krO2oWNG9MQH0DcCH2iedbje
	 BCYhtt++PIk96htP0nqWjVoUxr/xqCzlpVHpInIm0A1e3iVDdS24rvkvrGLkNFekRH
	 t5TIuUo+myx+IDbS2OTK4JXdIo7wxFS9WETZzaGj6lfWmIv69k1e/9FZTQKMUh/Tm8
	 GNUdTMJSviOtiBf/oUFyvb+yTxnLEFmgfhHM1gt27qIioaADwLrQXeOVj6TTEP/ksx
	 urtC1xcsRckusH2ywN+hxaItCpQmiuzOB+Y+3X7rqpz2zNhweD/BR7GZbZiLKc7Pvg
	 kmwiG5ppjIxcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 538D6C4332F
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 18:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166585985333.6575.12976473086856753951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a7c628af9566b9b16ccf62a031b67d2719721506d4913f04ca17aadaeed9487
Date: Sat, 15 Oct 2022 18:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665859853
