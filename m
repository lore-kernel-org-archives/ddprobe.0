Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEAA6A40
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 06:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69A67C433C1
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664347853;
	bh=NrEO3dovbAnPtad8Tu3vW2+YikZRisEz/xMUYNhyIrA=;
	h=To:Subject:From:Date:From;
	b=XDkSKRRvTbCaOxOwFEsJCgug9ZMyWSKfo9OHm1Ydozalr/Sf3rCPdWHKi4XsaId48
	 DGFAeRBEhl1COH4n3NPXzv1skAfPQ6EupY2VSb/QN+UW46WXln9uW9Yb2OthFQzdJp
	 +/FU4ksv/lx25jHsaEpeyUEpVWbkVw5yl+qmla9ZQCA5HI5UzT7WOpedeScQ67YcNu
	 SOUkTwLMeL2LP7g58YzwvK8XG2nDAdQ9zYzZcWSespIO8Z5i0VOTyOSr934qseCkau
	 rjp3HdO4FPFwKgWplvFzpAtBcCBAptpDs9n6IPOx9WwH2/2Aevva0cRqAu678sPTlC
	 UmVmhyaMDVyLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 511E1C04A95
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 06:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166434785332.16653.2657419103771086793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bd7b47640fd44594add1211fd013b628ab79aeefbab666227f12ca2413b9922
Date: Wed, 28 Sep 2022 06:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664347853
