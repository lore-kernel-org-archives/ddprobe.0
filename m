Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C54FA3D7F
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 23:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F8ADC433D6
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663543253;
	bh=pFRKmxniqPZTHbbYCsRlMFzln0IB2v7TzbPLAgp5RLM=;
	h=To:Subject:From:Date:From;
	b=kYuG/yRBFv3z8Bl8luhKjIFXErtl7++DQ5WtZLs3MvXktAriY8VCBMCNhXMc/5MPo
	 lX7jB5w2eLbyIN3C5sqa4Kn2ldLGBqvIH12FkMrK9yByvYmOzhg1uhm+gBcdSqNTTC
	 jZvrTIIsmkZiD66Oj+QTppWiGSEoWC6HbiFhdEKUq0GX0J5UYy5ic6qZsA0eLeztqn
	 tn795PrZrGLjNoWYuSrGiTvGRenglGazh11t7bqen6lNggojMjTWFDCXKLwWGoByfX
	 tROgDxppQNGlh5MydNbPAk27lB/b22CLRsy3zUt5gFom3UD5n5ZhklxW/YJE2VRTFi
	 g8Srvz0Y3ooFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53887C6FA82
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 23:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166354325333.28028.9753167862807708132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b71d57e1594a68bb3822a6667bd3b105994a90ff6c1fc6d1870f1028c0a06cb
Date: Sun, 18 Sep 2022 23:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663543253
