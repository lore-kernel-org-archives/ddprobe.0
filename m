Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B70B92578
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 13:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7067FC433B5
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 13:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669813254;
	bh=ML0KAw90OjvU9C+1SDZwxZMaK//uqVFVgWN4OyL6zOs=;
	h=To:Subject:From:Date:From;
	b=tdpbqqeLueZaDkpTFBPrHlkLPiXyeoAS53yNn3Fxs5BhACbsIV+G3IdFJX9gsGJfh
	 SlfY2I2g/7cxuG7Mon3o+bIO5S2/XLbwFnnnk+DgdyWFH1Fayn1w2cb8uBq8JPMos5
	 RtlIJAzLNsWsiC77dUCkCpDMHG9VMo3/xZQ5qH6UMaXVThjDCGv1/AVK9mkjRmyg/H
	 rnn7I/fUfHfOGpwpCEtvTi3cnrU5bR0oXJvvuWxQ2aEF2UV0bLBMSkNEhctQWxzpxc
	 QbEfgSOFlAROKpCipAEDWJIh1pJlGoaGuOWXpkP+q6JnonT/k3CT0w1OGCfYdgCA76
	 ysrWoy2Zt8zTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56AC6C4332F
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 13:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166981325434.17005.6367717817346516778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 388c7eeacdb41fee4ebf56e586b1994123a366fea5465153c0ed39ce20210e4f
Date: Wed, 30 Nov 2022 13:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669813254
