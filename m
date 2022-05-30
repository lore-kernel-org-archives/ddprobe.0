Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FBFD28F9
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 10:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653907919;
	h=To:Subject:From:Message-Id:Date;
	bh=DTN+eCFJ1tUgBxFglEBN4bcJZo4LJzsfp5E11JeGPPU=;
	b=BTg0jW9xOTKNgSATkPYZx9NC6EJ/KNbFPP7K2LfoobdpKnnnkpwhe6lCzExTtfQM
	ylxcGexs9zIDohJgYrKpTteFKotivmxg+QGA2gGHdkKa70gyibZQwLF932pEZN/CCfv
	Aucd7hefGOZnMVyuQt1j7+tqw2rpp9p7Buxk/+z4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653907919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DTN+eCFJ1tUgBxFglEBN4bcJZo4LJzsfp5E11JeGPPU=;
	b=iElTU+P2s+iXn20f3pqOUp4uTIAnKNkCj7yguBAUMZ2ZMW52Mu9aOquR/Igsxtwm
	KflsEVHM3QAuzBKKzKE210Wc1belVp+a4cJI6AsGt5zBBO4CLafEQiZa6DcUgtZK6Hd
	einDYXHGWMkrmHZEcKTq8ufcKsvRccT30DHsA4LU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181149811b9-de8dd26b-8850-4d63-b050-31ef56b7e46e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4e053ef7c87f1824a1704844ed92f1abd06a9d650d3d5cecba4db49c2d313f47
Date: Mon, 30 May 2022 10:51:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653907919
