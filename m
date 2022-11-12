Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4A322F55
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 16:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CF38C433D7
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 16:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668270054;
	bh=eBM+Up2nLBiL5DPOseFI1BXRcAdUmoRNpDUwvCOsW7w=;
	h=To:Subject:From:Date:From;
	b=TWmVC92UHnV5wJMjPTcyxIS5gMVFTsxDKLYCqbllIaXcojJo0CpW3HpAbKGSdFD9l
	 dZTLmyyzqXcqeLLSDRxYFqRwVogprXhoe1X+WHA7nUd3t+oSXMHgwGh/tnpjaCobch
	 qMkwyO4ZLiyMzJdR4OzeaNTHVDTsn30N5hVacYrCfQhwxAIu+z+Kp58eaLpAyeivu+
	 MeX2zmseTF3SDPTB3/VlRAADPwl0o0GgLFLKuWfrNcIE6jV7udOnGpfVVihbjsEzn7
	 fcfvuk5hdPFo7VEI5UgL1XJ16H7P0zMf6kai4AY0Qn7mAQpvOItF1Ur9i2BY7HqqlW
	 kd+L2MbGMFToQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51384C4332F
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 16:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166827005432.14629.6328936004935425371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 434da837a52fe4d630e40ca16b55e8d9441b301d537bbfe9e41363e4da9837c4
Date: Sat, 12 Nov 2022 16:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668270054
