Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181BB1FCE
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 08:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657528612;
	h=To:Subject:From:Message-Id:Date;
	bh=c9fIZ89gKwJdjxmhSVmCRiWN6eQUbx6phBMeb8mEZ6s=;
	b=dosk/jVhLdEuDdTH85DB4ZvIjXdS3BE7sut8BTqGSEnpSfUQyhlinwbKUAcwP3/l
	6hQeCyMEojGZvLx8Bpp70XVt4EsmMYjI8eO0XZGfMi7718MdXVp8h4y4nQqTJjAbfju
	taqp7seBM5HdpyouJ+15bqnDCDMcIBOJxsNyUYME=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657528612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c9fIZ89gKwJdjxmhSVmCRiWN6eQUbx6phBMeb8mEZ6s=;
	b=cWROz5DZMhEBsKIqYqp7ml8Lrhap36y5f7HY12xWu2o/9qNyoNIAK0cBt97wcEqm
	oOAcp/pQwg+ZXjYW2SIAHQ2Z3OEWWJF3Yyo3/GuX1Oop26V7wssfiQnWSMnl8VY5EFv
	JVui70cBanHXoqM3juEcnv1C0cDmxHQbm7X6hy/0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ec6775ba-9f90beaf-ac4a-424d-878f-1bd0efb9e82d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bdc1a4830f87c3e7760aa97624ae1d825911f8ada7db1b8514bebbc3c9316671
Date: Mon, 11 Jul 2022 08:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657528612
