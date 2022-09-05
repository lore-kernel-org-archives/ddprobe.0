Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C03A73C24
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 18:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EB89C433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662403253;
	bh=5fA3Duw2lRk540Vuo9Ngzj3EvbTqmFpmdRvpJsffoKI=;
	h=To:Subject:From:Date:From;
	b=PuDidrqZn7CrgbJTzUAYGsZIeBtvEcUkqg1FsFBG67OI0oPf7juvwD3IIRtxfLRVb
	 /A+gn4ue3kiy2k6bzq84AmFQPUQnqsjxgV0XSPOTBbR72lcWJBEcKC2wev+6vj1tLv
	 ggzEQYn7ATT0Nfbp4VAe1aei3YpX823IXMlScejMpfz4y/ZTtYn31TVrET9cKXgeP4
	 mFlIwF7p3bSLZ906Jjap+RjAOLuaAIOSt+94Ee5L8bOrshfclpZSazEFipnHPrGDZ5
	 0hFOiZ9Wl+/Xwj2nqGfuPwVGupUQz/HP/c2KIsB89TYNv9r37dhqjHymnfByGK40/M
	 Z3jxrPiC7ikCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53AD8ECAAD5
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 18:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166240325333.21163.16279789555531175919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7536e1ebfb4b0cb2479a4e06bf1abc0a15363e9cfa9bfd8ba7f973cfe5519fbd
Date: Mon, 05 Sep 2022 18:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662403253
