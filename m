Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E76C1C03
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 16:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659715852;
	h=To:Subject:From:Message-Id:Date;
	bh=PHeP/8Fwjcs5iepxaWfHqjbajx1RFZu365HzUflydaQ=;
	b=RVKkaGg6Jz5H3XzgiDSL/rYJJa0kARo5eSdsnGxd15loj8esft/NGKjbD+BVsU2D
	U7VR0nUzDISsQn+ZyWWHONgCNQJbBPKUzMjYKeNd6NHsLxkp20/1TO7Oqz3j3jdCL39
	dYXoOuNfAfu59DYybu7Fv8aoRyFH+dsAg57T8bQM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659715852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PHeP/8Fwjcs5iepxaWfHqjbajx1RFZu365HzUflydaQ=;
	b=IJBv1OKBXyxOrl9tJ20hDgCx/E7QLJ/dhy+ETpnOJ1tYeawhS5MiFEMkAwJxLV8z
	sREqbfWHI23Hj6jz5RL4DMFSRHHycN6MXkPExvkiBjeZOY8YRZ20MGWf9mSnHVs6dNC
	arMCScouBfW5g9ZkBf45klRmjxTvd2Z4V4Xq2qRM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826ec61940-c4864211-deff-44b8-b55e-907cd0577f4b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6e3c2392eb8f64ffec77238402da95fa97aa5f3125cdaae3b47c252010536478
Date: Fri, 5 Aug 2022 16:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659715852
