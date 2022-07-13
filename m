Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3382C15AA
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 02:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657680412;
	h=To:Subject:From:Message-Id:Date;
	bh=X44s+QIEFq3ovfi6USsS+Qkztdf12paUhN9eL5+3sD0=;
	b=OVTK8WJ2G6vhG4evubF1kWce03fXHd6rVjIM5T8rrUPrze5svFiPryEIW/zgnYz6
	ghmx8dSRqksWvAOEWtiwXAO6+A10mjcIkRJKb9YadMX/qWJkCuPrCGv/rCP94A9Q6lL
	TGO7pQxgSRYabyVdzf+95p60wCI085+WMiQotT0Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657680412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=X44s+QIEFq3ovfi6USsS+Qkztdf12paUhN9eL5+3sD0=;
	b=R6j4W4/Bmz0BO9LVaRkfdvNfgPHIV+4GNxSQHkq8pfcbVuMp+bw6X4Sm5Z6FOgaY
	n1ek6CQVuNXYHCMFnlHZ2mPkD1wYvnNNN/85Os9/857B5XZ3nHNQGilrM0aqdUQYj92
	5QIO7zKU0AR4dXoknsEku/DEQ8+c/BQlngRjnVf4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f573be6c-db28f817-80c0-4d88-b7d2-c44227317036-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 971374a15baec788619c850415d2de35a3cc72f85ea70a0ce06a5bac52c618df
Date: Wed, 13 Jul 2022 02:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657680412
