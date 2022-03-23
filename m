Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73BA71378
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 08:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648023385;
	h=To:Subject:From:Message-Id:Date;
	bh=EIn/ML8o/CluvSr3yuKYzLLmZWd2l8/0CQofFibuCNY=;
	b=ACSrl9XD0Kz2Xe6rlzwSuJ6TCtLxZky7E03wypHbT2c81RGCymfsYXGXp3FKxppw
	fKUJkuUYfTiT6MUVfjk+VVeS7J9vWeNbFp66RhZfOeBd8BDsJO4oH+3hUFZFr2vDKyN
	deT3ltLvOwmLYl6fxSM2w3GkhLPmhMPaM2YznEu8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648023385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EIn/ML8o/CluvSr3yuKYzLLmZWd2l8/0CQofFibuCNY=;
	b=hbnxD3ta8YU/HBRq8eClr/e8bdR+Yscp7frHb8B8VyAMnTPwbE/4J60+ropXJRx3
	QIKMAKdDYMS60G5oLuUsPipTVvALFsy2ejfnOwEvcGfVvQhwT2olgyb3bVX0fb4WCCA
	CjNpvowS/bS3klC+X/HnVKb6EgqTmUyeTyIxRDYA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb5d93296-5ec42429-adad-4b29-ba72-cac986d8e57c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a45dc69b09ad8307d46140bb44b95684af0caa96cd63fd614cd5a3189fedf812
Date: Wed, 23 Mar 2022 08:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648023384
