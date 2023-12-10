Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09E5EF9E2
	for <ddprobe@lists.linux.dev>; Sun, 10 Dec 2023 14:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nuk2q60l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C555C433C8
	for <ddprobe@lists.linux.dev>; Sun, 10 Dec 2023 14:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702217896;
	bh=X8tvRkQGT/heA4aIX0zxhhVBvlNEA/En0zgTM3Ad94Q=;
	h=To:Subject:From:Date:From;
	b=Nuk2q60lLVlSs6U1mDCSN/gnJgzFLFiTGDRSNMwFOtki64owaEdW6NIxToigHleTE
	 P5Rcx7TfIbAZ6+IJRw1HT1yGp04aMKIzxbZfOxMIc3aJBC1SfhxILwDcRCeTFDSzcp
	 14uU2uAQPteCR69W21YIkwWKKodrp1ZPYYRHOBzdKaENtzPnJTYGt6iBL71iv0LVUr
	 DcXTQeoxmCPQdsrAd63fFJUMck4nG32Apexurk+rQAA41URAKAEixtmsnnamdBF15t
	 5dIXti5p2pP6g6Bm7Kaac4wwx4Ip82fijupmjZ3qic67FhVsoDjIyJOd2ngdIiefYn
	 UYu9BvegptEhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6539EC4167B
	for <ddprobe@lists.linux.dev>; Sun, 10 Dec 2023 14:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170221789640.16295.16820658305772046086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2eebe86490ac1d64b48a025befefac43558602fd88632ea1b8bd1a3ef1b03493
Date: Sun, 10 Dec 2023 14:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702217896
