Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0175C3FDF
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 21:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655330099;
	h=To:Subject:From:Message-Id:Date;
	bh=N3/LPwZ28B2MsFZ+IYc1J/uBrA2JN9OT8pkJjFs28N0=;
	b=lN9S+srm3TicdwEaH/Hf/spK7O5HGRx5+cX1m3M75boJdGIS2JdlE1hGEq36066L
	XkeA4Yvqaz1nfWkD1Rs3D6UZRAiBZPFKDf6VzlQ5BykKb/8Z2TFpZr69cYaZEzOosdX
	m5KNYhl9lP5H/bY/r9QOSkCvEbHqmnvlnuCPryYw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655330099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N3/LPwZ28B2MsFZ+IYc1J/uBrA2JN9OT8pkJjFs28N0=;
	b=Tx7dltqHcSztxbzm82brDYN07pmvpbNrXPZbi46iQVvuWb5BR+uc/iJd5Kyp55PF
	82qd5uYwvHwsxtoFOAg7XiqyK7h9n71vtbbYcOwaUH1lW24G+922Kj6+16R/O4LMzpH
	FbKS37tn0WdW7LB+evZKwFPIV7QoLrgm2AbKCQRc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181695cd05e-83f7a6bb-8ab8-474a-b8ae-148caeeb034a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d486e650b53f37c34f93952acb68e54175837c1432e13033863a3fd9ac71f1cd
Date: Wed, 15 Jun 2022 21:54:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655330099
