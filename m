Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F06A2912
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 17:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652204819;
	h=To:Subject:From:Message-Id:Date;
	bh=17d5kFaT8fdeCtQE4ml/ll/mtq6wxW4X+hSH6YVtagY=;
	b=UK6JEju/+x6x82HQDgXYqy0ach/OsNbxMQzhs/dbEqAuXutvUeMPVaFWFc++9eID
	TSRDIob/rbRPcRnB70Nhr3jmqbDEMw2vg2YLF8cwNgxoRntTsEcBtInjma33uULzsio
	fmpV4MRoYpjQw01N9U/RvcvkZ2Yc8KbXHoGjc9b8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652204819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=17d5kFaT8fdeCtQE4ml/ll/mtq6wxW4X+hSH6YVtagY=;
	b=gIBk3sg+9idCY1Y1kgr5RpEUaXkbljzaUvYlA+3X0li7YJimzNkmEMXYGNmiwqPx
	nQ8zZgf5+Ka87C4EK9NXAyrs4/j8EylEiIU/XXS1wMaYG4TNk2rJts8OySv+Mrb/npU
	K+sGPd9CLqjEWecLcxN7gU9Keu4sgeDHi9Zp5+tU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180af14d3b3-ce8b71e8-0dda-40b8-825d-8a4c4016e639-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cf2b2e78f9459501b5bed63845aec5c7d8a5d71925dae43039086fe031b3e59f
Date: Tue, 10 May 2022 17:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652204819
