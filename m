Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5A3A38
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 04:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653451259;
	h=To:Subject:From:Message-Id:Date;
	bh=sTWjm66nCSK2Q91nCfSnWYZqL2qK50Hurmwe7e0/i6M=;
	b=OxDD/shKBNxJHVx0cu2BTACL6Ia3U55OTzbmm4tvDePA1K04LG9eTWDKVAF7fl4v
	+F2xWq2JeuELqtxx9EzxGuTGy9vSYJ0sUuN/4UEmeRH+XYzvnS20a9HAxcKajH6FFqY
	fIr3q0kSMK9PfjNLJ8MzuqHC4I6RWkVPlmpjwMTo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653451259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sTWjm66nCSK2Q91nCfSnWYZqL2qK50Hurmwe7e0/i6M=;
	b=HM/WRTMSJIdwDwh+pMPDNwNZZlwC1kEVffTsJ0OCo8ukDxQenU7B44XNXUxBuhrz
	nPzsM//4ipCu4m829LE1CWG1j3i0qycoif7NhJxQwYlJX2O9lZwQBY/+dWxtD3SZN5V
	/twnt/R8T3aTnmG3UXq3g8DxYxSndTlz35HQWScw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f95ffddb-2e0d9469-8b1c-439c-882e-ed928832d160-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 10cda10c2eaed250ec1a22a015287b332ed7d05f545921a953d81cf85ccc385e
Date: Wed, 25 May 2022 04:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653451259
