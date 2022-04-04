Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BDBA28E0
	for <ddprobe@lists.linux.dev>; Mon,  4 Apr 2022 06:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649052598;
	h=To:Subject:From:Message-Id:Date;
	bh=DomTa+V72NDmaCJ1E5ZC9ETygjfT9yPKEfcUqa7crPU=;
	b=Jpz3rJ2Ni2Nr+in//As/b4Uwdg2bdPkyJyFx/zsFydtG0rx+GbGY34UniL2JMRlV
	p3yts1DX7yWzWIMQogQYWwNdKxCA/8/bBOQ18xMBEcUQvwaUGAqDmxwUF871rO274q8
	s7kzgFeolEePFh82tbU6AEPRCdDXOGUVUHGjNi8g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649052598;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DomTa+V72NDmaCJ1E5ZC9ETygjfT9yPKEfcUqa7crPU=;
	b=fHq7ZrxWTIIIVGbY6QznZaRKZe7dFGfCobhDyyGDKtGieK2F7pehaCsw+Sit9Zd3
	GsB6OTVGgg2mu3+/NgjmchowmBZ5eogJCFrJJxHKxk7h0xsJ5MX3l6DiDSqF+pi4KOe
	0Ez/tMM3LtwC/MDGvtUXzf0/HtUzlP1/4MU3qTW0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff331bff6-794b5349-f260-45c9-918b-6028e638a211-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e132547395dd2b6c8a5bf85ef65a581aacbbdd97ff3c95f18278e7675a116bc6
Date: Mon, 4 Apr 2022 06:09:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.04-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649052598
