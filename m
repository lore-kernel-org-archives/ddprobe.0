Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E18A62590
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 19:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650137758;
	h=To:Subject:From:Message-Id:Date;
	bh=UNizvakdPIJqWK8I/U/cRX5TirAIYG2QpsyH9/w62hA=;
	b=DuYpBNVw2e9X3rgi0gV6ONwTUKpqCmr85buz6ov7lL1sr2UF7s/qaBOmzBVOW9Oq
	pO/PyAmDsRASwLqHAII1b9MU7FTyLVTQSIOiO7DgO+gmpcdjBoYMyAwgNUur7r5lpBl
	qq4RDC/Au78/NkSH7r5nzQKya38iGQ1Zofx/lZus=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650137758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UNizvakdPIJqWK8I/U/cRX5TirAIYG2QpsyH9/w62hA=;
	b=UIUk3mmG6Ys816G5L9lskaiLBL60u8Ort1t5MKGM11ZRLqbj9is1uYzqjO9Olesf
	vLylOm9lMGDnqA/GxJ4NPEZJLLOgsmipko2kocEf0m8V39KfnjPnf4f7VLQhWJFEbA5
	Ix1D1nceZ7SiX2I8bcnwO18AuJ9gSGO+iNLvqe3E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018033dffa2a-b31f0b98-6bb4-48e3-b565-649e70271f33-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 28426f4cb35e97f57992de81b3110d1363d7128bf12e7de86993e6354280447d
Date: Sat, 16 Apr 2022 19:35:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650137758
