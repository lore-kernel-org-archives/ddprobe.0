Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D64E182
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 00:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656981412;
	h=To:Subject:From:Message-Id:Date;
	bh=ucrZ02ghV+khWNQ0upCgumKGG0A0ESnT9BlvIgUmPPk=;
	b=iG2dQBqpVTpzCArEGYPTYLPNaCGRudnPffuVgdWfE56RWugZaymlVESdHsaNJqFG
	/kghYsjkgI0nb7Vn66voqJdWe6ZsT5qD0JO8FXaSZZYzn7A0ZRCCfC6QnpBWBpZkvIy
	F7A/qtBY+l66mHinIKf1cNz7calQaONr0WxZG0YU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656981412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ucrZ02ghV+khWNQ0upCgumKGG0A0ESnT9BlvIgUmPPk=;
	b=SNxjAwg2UpZhZZSqJe9pE37Oj86f7PyWGsw8AFxGi5PQvmx706iX+s18A6+wc+Oh
	0T5r6julrPqpH7DwEwQ9hVJB1xuIvfNVw0T5mhha6R4BRCxFNmVsUKVDKnXCWVsjGGH
	UDuHh88QaAtuEUN4Cr5s6xCbfM7ViZJJACx3nYyo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cbc9d9bc-9cc5b136-5826-4c6e-bfa8-8d7c914190b0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dfc1f1794840db25e05d38b21f8b3a7da015b107bc20d043cbddd0e36c07ed0b
Date: Tue, 5 Jul 2022 00:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656981412
