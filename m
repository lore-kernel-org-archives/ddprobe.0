Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4F787B
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 07:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645427185;
	h=To:Subject:From:Message-Id:Date;
	bh=Xosvs2jZcpn+Bl9RUnaFxpmMVkX7Yei3ABXPvQio17o=;
	b=JZCzkV7gOS4rqv5s5OcTqyrSGiT3vxX5YtUesUg8L1mBfnpN6LA5cbiY2lePAbma
	B+89cjqJyavrZfFaatNhwKit5kumDOcAg0ieV6xNAZtCQNUZ1h2nS3VQyICED/Ehi9R
	Hq/eNO+ThoXSIAIBjSQj1HP2qCbyqYYobfNlTgHQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645427185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Xosvs2jZcpn+Bl9RUnaFxpmMVkX7Yei3ABXPvQio17o=;
	b=cg+aIX2oaeCtzH3XgZciBvNXKvnlyL+aAkty/ittVMtAYbdlKDoFK6N81pupSPkA
	MUTSPiUpGhmEaBzW/QDEDngKWjEghZ9AoWgNK4LM0L/a6ZLNCHihbXO5Jlbv5UsTMF7
	YMwneEDncplTYBd9FUO503KeDnhuSr2w93bK5tpQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1b1a5491-7917c95e-062c-4e23-a2dd-6d8b28e08f15-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2701fd45d48faa17eabc1decf986fdd28cc21da3c05c9fc3685f0ea01c0dfa2c
Date: Mon, 21 Feb 2022 07:06:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645427184
