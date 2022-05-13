Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0089420F3
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 06:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652422679;
	h=To:Subject:From:Message-Id:Date;
	bh=m+E9p/Cuy8wC/37ipxnclI6eDPcCwPeG0JwX22ir0Q8=;
	b=HgCHFKBnpZh9y55i2oWLN28bbgVs6su1k3Q3Gvdqqx6396Bg+IfG1muvq58e6o1F
	jUi81DkX43jHlS3YB4eFlSozhDD1JgEoXwLt6WaicBhhMg2yX8ZEi6/B6rkO/Du7NIr
	i4EfPMfIn5hpQZHHRbgTITiRxrHW+csOUrcG3cFs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652422679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m+E9p/Cuy8wC/37ipxnclI6eDPcCwPeG0JwX22ir0Q8=;
	b=dQjNl8jGiVypjfP/Z/GxJmwbP+ZFQlHViMkrCLvkWz7T6z0eJmo2FsLTlBgrtvTT
	QI2DOHx80CZcUr0BWA1srTEGh4mi6/4JUD0vrK/hGOEpUdXhQXpsxMOb7k9bc2pj8g9
	Mfj8TUJ3vhpIVzqpPAdFI2fL1ILeLb8dhlVopgVQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bc111ac7-05ed3b67-1e0d-4280-954e-50e4163a3f8a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2f39dd171ce7c80c1e3d14d46a6d7dceae62f3516c048ac873d3d23df5c9dfe1
Date: Fri, 13 May 2022 06:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652422679
