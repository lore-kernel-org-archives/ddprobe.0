Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F34137C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 21:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656193012;
	h=To:Subject:From:Message-Id:Date;
	bh=vAEDgRfMO/DMzOMWCfY7j8LLBKlr0C36t8IEHutQekM=;
	b=gS0qX0BwCcBNdvyObcbKy4GhbGvO04oJCEth6dhPuEjVfGo72PaycIi1CDUPm42u
	e8Gjk0jDxDYunHwDeya2oV01oYaDhMxIem+mKqT+Kr+YTNnEDj9lSv3hsoqq4G/ALky
	4MrQpORFB69+Zp5XPI2y+U5xPGqLr4yWoRPFvFTQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656193012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vAEDgRfMO/DMzOMWCfY7j8LLBKlr0C36t8IEHutQekM=;
	b=UlCqfGSSTtxaaH1kU54qEZieoaFhmIOBVlvFqgAMQHlqUagXMnu+Kyd7gmai9svR
	xHeZJSwbYBxq+tRE1oPhrq06/sEB5f26dBeyOi6s/HxF+dxBsndHQI9WXZVD+CF5Pv7
	Eont/eC6lh+g1xe7P6fx1SpnDs5KyN8oUsf3QoXw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819ccbd234-631ec756-607a-41d0-8d97-0babb889a08f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1452e3738bb69ebc0ad530b35b1fdce5a319f23fc98cc3d9dde1f80e8fca9400
Date: Sat, 25 Jun 2022 21:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656193012
