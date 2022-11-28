Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5ABE362
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 06:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 720F9C433C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 06:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669616454;
	bh=+yzRP/5uAUBeJGL6av39BFrnW1TSY0HTG0AQo4g2LLU=;
	h=To:Subject:From:Date:From;
	b=nT/LnjHznUhP3BGHEeYNmp8PwhJB5hq1RvE2Mfk30ZJf2zUkfwQ0CGhxDezKNxgTB
	 K0HIX0GhAt5be723xqlW31LqfSLrrxgAQxKPU50iPpjr1H5SQqRz4LJsyJcXEtEkEU
	 MS24EI42y3tayn6jbsXwUrupHFa1+HLPJtSd3AiG3qpjalBblRoGk3Uje2ZsLCtjPZ
	 lFQ9H2ESl5L1MzyykLIW2VebSufrONuMeVOGMstT1S6P9Bq2Tmkrh6rnNYXcuCbs9y
	 JaTIWxCPFoQzjPlwdYX1Gj3U8Eo3LF5O9f2qfp5ouAVI9J+pPWaG6bEbOvVlnfnjLM
	 6eiF1V86eb7Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55926C4321E
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 06:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166961645434.1208.16781427572033276997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d82804a9eb3119bca6c3fb82494402141f807ff3778704643111c10a78613ea9
Date: Mon, 28 Nov 2022 06:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669616454
