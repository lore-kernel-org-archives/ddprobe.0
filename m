Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F41731FC3
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 08:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652171459;
	h=To:Subject:From:Message-Id:Date;
	bh=5c9vx1NolA9YjiLGxe9NK1jpdukSHafRpaDhCyx9QdU=;
	b=lUxlMKgNiBiD0DJ44hqhU7movS7HBeBXHpgICNF+DIb+lqMrNiN0nilJEZHyIRV2
	fTTEsGKpdQ9yOBzsjEVjQo8M/KMvnDwq+PCtwDVBKavWLthTjnhBxuQve6nawZwgfzD
	4DyDo95eKmFAkcs1Mn0gHZIiV9Lm88sr9zzgL/yY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652171459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5c9vx1NolA9YjiLGxe9NK1jpdukSHafRpaDhCyx9QdU=;
	b=a2eXTdKEAlIrB/o9z8D07cGAIiszxzEm71OQjml5pBOhol/UpG3EtypDRxrnFE3v
	qdwJZ29mS1PC80c5M03HcEeev7mSJ6sUg5vVQYbkAjt3NN8jvgHoQ7Ym0b2YBoDOBtI
	T9Yx3FvB2BJ/GNQXYmkkp6D8GvZ8A0COUTjFuNXQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ad17cac8-392e9e9a-6cf8-4d97-8382-7ec8f4e632eb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 76537aa053914378624fc8a0bf9d2fc4c78bce4a8fd230305e7fbdbb45520529
Date: Tue, 10 May 2022 08:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652171459
