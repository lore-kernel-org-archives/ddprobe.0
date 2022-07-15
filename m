Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 150A22F34
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 11:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657883812;
	h=To:Subject:From:Message-Id:Date;
	bh=78RYMnnFr78cvF+qccn0D3MOs9Ble5zwJTpTFXOZHlE=;
	b=JLIkbR6P8iOszCYkimFOFNHgRB2VrRG7BSVsovr0JcvSKa4N8gx2ZihfOABKc1kD
	xL6K2/tl1xtvDrTIHrMEMCp7eHCCQUVd0L7dFqMQUErKqkRdv9s5Ksi+TNFTEYuc+iH
	dvaQEMT6qyEhGfOoq2WDmp6JTQ8C6QIMbb6RC6H0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657883812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=78RYMnnFr78cvF+qccn0D3MOs9Ble5zwJTpTFXOZHlE=;
	b=Ws+Efis445Ps0dSnH1JxBJLSJh0WIsS21pk27jILP5DKE4f5JLaozRqFGfMWZVCi
	GTg3Gyu5yBsfpl2VkwL0vb4dfAF9udBgOXZ3gWWkzhL44r+oIt47BjskSnP21T1FVBJ
	VoCaauqUPkZVqSh4nnF3g/erVxA4E8qSD8PPOkEU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182019361d0-fe6c77dc-d759-466b-9748-276772834999-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2f0b12b681122ba70f394691098923aa903eee01173cccc51ea92f220ac5f93f
Date: Fri, 15 Jul 2022 11:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657883812
