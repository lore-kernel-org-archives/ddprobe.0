Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A62632
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 14:26:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651760818;
	h=To:Subject:From:Message-Id:Date;
	bh=Yfg2mpkZW90dgcaUBoBASYulHdeEvkI3f3AZJEOX5HM=;
	b=CjzXHCMGsXLFXz93rcKq5MwVSEKd9BL3nNyM0bQZdn3lE6DS6CbFVbPeR+r7qVy8
	KyIlCGGT75Y7TJqvq2ViuNhmsPMzbeTBc5MHpxj5+UKEnbkOh3v+SGlodmOt6OERYHZ
	TGwM3VwiO0xvnoG9G71VskOLKzOcCpN6vCIzqliU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651760818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Yfg2mpkZW90dgcaUBoBASYulHdeEvkI3f3AZJEOX5HM=;
	b=Lc6N9Nnza8sjcY2sTuZdieverY9PSnX5w/oiJ4S5JMi2S4hqW0gjVB1fAgw2kRMU
	NbW5ELXwz/OjglAimtuglrQ+0zwiUB/PMmF0M2tcYzPJZsGf8mUAqbwbasaO5DutD2j
	E7mX4AOGMfrF8KcD1bFlxWWNJCTemIUht2jbNZvY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180949de85c-6cafbcff-a599-4cab-8a4f-36567082ded0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7d28fdf407cabec763667955ace47ffca150e104628bd7bbac633e834921219e
Date: Thu, 5 May 2022 14:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651760818
