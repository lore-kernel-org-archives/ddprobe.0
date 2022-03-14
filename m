Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CBC77469
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 22:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647298584;
	h=To:Subject:From:Message-Id:Date;
	bh=YEIfnG31RUy/njk0/fZ5oheBxOaSDSJgaWnQeAcRykE=;
	b=dWHZF38e5zycxgq/qfywAAr7MOmS6cRiO9lgVDHyYUDatgOXY45TDD7vebhOshkS
	89OCMUh5INvhri5WpuRp+DTDbKeewQdGm0ZcUodf9/SiUiphhe/fj9DrUhd78sGHFXi
	1Sus7zGxaN0U0nApLzD0FInURjTKDWNPy+Oj/i0U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647298584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YEIfnG31RUy/njk0/fZ5oheBxOaSDSJgaWnQeAcRykE=;
	b=JgTO0FpFj7cwXbutbhzWqUa1/yWt+7Ix9MYJn6y18ZqkeCMn3JX7QEDolShHNdQS
	AysC7a4hkFoJzj+amFBz6xvOgkovWZUHH8pVM6OMwQT9kgAJazeuR92xFZeYsHGXAND
	nUNJFlO9mzckcoUNfYeuMEKBcFnXKiaaiRZnSe8I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8aa5a090-8c19c3a5-8d52-495d-8a1f-6aa69c857600-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d807dace945cb91866054b1f5bf89d9dbdb78a7d807f127bf51e36f0522e5876
Date: Mon, 14 Mar 2022 22:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647298584
