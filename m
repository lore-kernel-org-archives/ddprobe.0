Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E76053D60
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 19:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652385239;
	h=To:Subject:From:Message-Id:Date;
	bh=hSedG65g84bslzPQrz7QMl/nK0XrJvMysN4S8w6a828=;
	b=W8Y6qMNeoTn2gim3s9TDKyt/LOfEH+sGLxy7VrEbcBSHeqE/80RU8sBuvWhE8uOc
	I4gl6zws1emy4Ye4+Ibjhh5zhKHnRx5QLq1AVszuWwfNUvLOQPumFXegp9r4Yns+jsh
	V2vAIcSc8qI47WVLq7uQxopCjR0aykdoajVSA9MI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652385239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hSedG65g84bslzPQrz7QMl/nK0XrJvMysN4S8w6a828=;
	b=k7LQPHJMuA4NTEEnrXM1l3O1Q3Jx1EoROILMboiVa0tdq5LdkPRi7XXQgyCchoZM
	7Z1JEl9SSXSRYTMOPOW7VSAuvy5n4MqF+O6QEuqYzOCO4OhlsbeI2nFX2hfVh6xu503
	cwnInQIUdDyOOQ/VQFqoEDZ3JQaFGgwBqLvrDpKg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b9d5d0ff-a19d1f1e-131c-47f8-b4d8-1d57957afba1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7c498d6f8dc31dce9bdde70abeb200b1b67e704bafec732f30196a66d7da0d33
Date: Thu, 12 May 2022 19:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652385239
