Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7447CC2CC
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 23:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4534C433C0
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 23:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687216328;
	bh=FezCO7vDsjfbcqw+pWLVQPJVOpKIXufNaUVikSXX6rY=;
	h=To:Subject:From:Date:From;
	b=l68rtcyhh53Y1SMOy0NsD1lvlDvcQIGs6Bg1mxdEt6oCOc9eYcgkb4dxUQK93euCQ
	 SPNUiSIQkpigZvlcEVEixZ0ficlkinIpp8xw9c7FlzWyjBX9MMffyqbZEnZ7+7Kp6N
	 bRC4D15K6snB3AmPdgaO8Kts8OMOedKKFAdBMuKKmqV12qtCxRhgifN8rn/h+emdFV
	 DEc2nr9g4fqgZCTXisQa9wPrfH8HiTDm8LXj0q9678SfzXOJ6JLGnrLeCrHI8TZG/a
	 NhoVAF+J/kK2SPpNZgzi3BSPq7NNlVSiZPHfWWYO+Y3bjTlAl2FSfX9g1TaNYL6IE+
	 uCL9QvAelJB+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C20A9EB64DA
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 23:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168721632877.26792.9604709882758633875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c78b74d1fad6a3d97500d9bcf41f24cd4eea8e0a2df00aaff4f76c26a0bfcb11
Date: Mon, 19 Jun 2023 23:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687216328
