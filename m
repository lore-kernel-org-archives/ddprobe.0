Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09A052575
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 13:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656511012;
	h=To:Subject:From:Message-Id:Date;
	bh=BTF47QVWAgTx4LeMdiqRwZ8BZVsybbbC7zq1O03aXos=;
	b=N9M+6YGApx9K6L9qMlNKivu8ASJuEmgHMRN91MO2mbJWgNc54M92aGRwc6cjznvY
	8JT3OZF3kCzmqhEMUMWnyWlGxyt28w6BQJyahvgq51Iji3+QWytRnph4ZyHbp4ZWKQl
	8EnPZjvPliSexgO6tcinJUijcUvblkf9061jQNwE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656511012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BTF47QVWAgTx4LeMdiqRwZ8BZVsybbbC7zq1O03aXos=;
	b=J66COe/XbCjaIrSqkFbyWUgAslVPqW9FGvBRrdzs9RnfDj6v9Lgo9MJb/q/3pmbS
	sEYbMTjV7JGsL2N+wkDzO+v22uRZJWkTTJbkTBLUGJn0m+NQCFF38AERT6sAYDRimEY
	7uop9aCu98vGV/O6Sf+hMaA0wzyzQZMSXBUrgL38=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181afc01dbe-864da361-a0c5-4e59-a3e7-4155d15afbb1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 58ed0da4c0e7594e6f3b34d7780650c33702ded0695ab712ad015aa582e1d4fe
Date: Wed, 29 Jun 2022 13:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656511012
