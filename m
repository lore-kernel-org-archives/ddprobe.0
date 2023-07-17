Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C6281FD0
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 05:11:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C03D9C433C8
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 05:11:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689570668;
	bh=TWcv0LaNqutasoO99StDYO0Qj2GM1sJjj6gOSqOLQr4=;
	h=To:Subject:From:Date:From;
	b=MAFmAhHMeqj+Seuz5iws/7veFNq3sDOv2OFXOn1KGuUN/z+Czn4lx3F60VaNaXCZs
	 JGNuOJ5n7gcbfh/QAGoBEFvF96bqAApgC/UoFcBAMCxpXs/fnGxnFY6L/vJZWsEidv
	 Qzfl/Cyj1BmQGTUw6XjrxEGi6Msm+f5AwZxsBOdRaT2+nUCMKY5WcEi61dTtCVWv1r
	 fM2UwK/koSvcT3tdstOjHitqmxQCteDP1vQXsGBitlE2b9XT3ZXgV0sCpEPcRjuQtF
	 rVVnbZ7ZZJAHyqcwo9/IRE+SGlz+OfMF3PwlydxOW3QF/e/jjVUJjH6f8zQcFfg/Dg
	 WXluzY0Fb4tJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4C3FEB64DC
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 05:11:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168957066866.11636.12469028151702280079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1326773920906215455949f2f6595aa5492ac35042dc55043e2391417da438a
Date: Mon, 17 Jul 2023 05:11:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689570668
