Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE3B7B
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 03:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652154359;
	h=To:Subject:From:Message-Id:Date;
	bh=PPgNOU0umLlivW1K98VoS2TIM6vESUE2PaYPcCOY4f0=;
	b=S4Ts3exkpxdOvQ9goHzwQ50ZRCvm5+kgQYk+v9Y592150mjCIz2z+oqc5uNdU8Ii
	JvPFLs8NCYaJ6xgWzEVpqwUCRPCeQ3ZfFP0iR+3IDWaQASE6dUIfLSzKeC0JR5OeUky
	Dq+oas4rZrsOkr7wFZiLNHcragN06zwzkbTMuWjw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652154359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PPgNOU0umLlivW1K98VoS2TIM6vESUE2PaYPcCOY4f0=;
	b=hOeKwZoIiDGbYlh3fMjfAfQkV7uYNdvYidsExU96uFKkEUj4Dqm168oKJ06S8soZ
	cwABo5bgUX+Y1bqNJg5gaEZneREgO3p8czw2W5BISkRj8dA6zCZC61aqCnz/YC7hLNh
	H8y9UeEIZ8b9/Xpwtdi9qxq3jBfokuiKkmhwAp6w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ac12ddd3-613ddb6d-c8ab-4768-8de5-8c1e42e951e4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0582717066ad5fe4dd07f9ffe08a090524bb2eba1f6a03607fe5342e050ceb0e
Date: Tue, 10 May 2022 03:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652154359
