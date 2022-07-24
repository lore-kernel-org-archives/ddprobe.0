Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22121198
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 11:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658663212;
	h=To:Subject:From:Message-Id:Date;
	bh=QC9WNxAsAb9l05M993mgXRvIAGBJucgnnkORac5TCIs=;
	b=THh6VAd1ywytdMOyHPAc611B2RGPmTQAelT1IXsbn2H65DwGcNAqnA0ChiEhv1Yc
	1XVQjBJBdwl1PHpoI/oT05B0Mu55wDQeyw0A+k3wRWmlokWzhMZmvZgDJa2HMhfMFQf
	lUwXpulHlZEIusegme/x/5Yfq8jzHhU8W206VB9Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658663212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QC9WNxAsAb9l05M993mgXRvIAGBJucgnnkORac5TCIs=;
	b=ZWAnO+XikRWjRrNvRmfMesW4ued2UcPIw9tuhHZTKC14ItCW+ZSh/n76E//4ncLh
	8vNIGDJs76a0T/QC1BA45JsP5IssIaMQYcJO7ji4dbs2T1ah+lLpuM/Umx4xuDAJ2I2
	MUxRPC2fS1MnEPagpO5BfaUzeoZSswHGHhDTmgx0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018230081532-3ddc77d4-c5d9-4ab3-87e5-0a41883570a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4d89bbc07db1125a6ddd5c4f2afed0a4fddfb287b0c0face501980cecbff183d
Date: Sun, 24 Jul 2022 11:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658663212
