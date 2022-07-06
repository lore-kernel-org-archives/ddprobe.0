Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 126F04C82
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 14:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657117612;
	h=To:Subject:From:Message-Id:Date;
	bh=iavKhW7UIpPxizvVdgV6hXWv5XuMRq6v0vZ0yvDz1Mk=;
	b=S5yqmMceiBhP9F6ZxPUkHNivnuLfXCz8RCqXxzeupXOm1qtrrxW4zo5311x972qm
	FCuRsRmgKY5rOsjWyvRzPPs2fQt8KeTNfJEMjQhtX+br/1InQoldoDlTyzXgTx4n6mQ
	TNeZFrPSF8nbOVBZS5PlwD9xfSCZ1x2NETyS20WQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657117612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iavKhW7UIpPxizvVdgV6hXWv5XuMRq6v0vZ0yvDz1Mk=;
	b=MkjukkC6ElWsK+hqJO18R0UttEsybxVcf3ibPMe6ryEYN0KvdoEvi0k/kHdnB1CS
	Mq8pUZqIyWCq9Qss2QN9tJgiGxC7WezikQ7K1f4C2Q8DyP+0JG/YhXwCGA2vo/m0Sa3
	YL5DfsMxCWhMOa5/8lkIZSrJTvaWbHKhGiNtiKmA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d3e818d6-0eaa3083-e660-44f8-a06a-d3ad8048c6a3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ed867af8c7dc14125d3e0f78e838844689384131d886fc2ad3a6f15011285b4
Date: Wed, 6 Jul 2022 14:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657117612
