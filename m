Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B466F2F29
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 09:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645952485;
	h=To:Subject:From:Message-Id:Date;
	bh=Kkc2UZPJizrr5D41kxumuJNLgiadS5CybyIxmm+OHtc=;
	b=L++j3Nm6ACfTGJ57YCaf/LPi0kQo3gvWlVzdIS752r3AmgwG3wyUfX6wHznRKDyD
	AVLcZv9kzdWyc1ZfXlpbcOx8WelwSN7v+D0Z4i2yASVbnQlp/NDRz7PBWP4x2MT/HMy
	K4huUj6uh5Ti5kmv2UahF7FMkPon9qD0UHXCDunE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645952485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Kkc2UZPJizrr5D41kxumuJNLgiadS5CybyIxmm+OHtc=;
	b=KINIaxdQc5/HQEEPB+3Lbdtc1puq8vDTT1JiOVrZKliLqbcTer24j8OvgjRNZh62
	SOP24ONIK/IF11b2GsuYWlAuL+IE/N44SOydLjvLZ4qHSNejdZ/zmirJ3x5xGZN7Vie
	HrsGnfataD+WAqL+SuaQVhrlprdBqizz7e9LxNQA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3a69c613-63d1bf4a-014a-438f-b8a0-706ff2c6eadb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8a2073603e6c630b26fe67b6f17419197dca20f1eeebf74bccaed40acfc271cb
Date: Sun, 27 Feb 2022 09:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645952484
