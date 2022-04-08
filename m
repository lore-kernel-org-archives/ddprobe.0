Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1664A2564
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 15:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649432338;
	h=To:Subject:From:Message-Id:Date;
	bh=pP7SkwbCtODv1DeY/c3DJOXR+Bp7raQQTqfG6XKrq2M=;
	b=gLo4Amrly2t8SjpXwfgqtlgQmPuVUh7RNMA8kOCn39/tuWPhUV/U9NGY1hRxVw8T
	0hMljGNAZb7MdanYp/khOiLBAFOJkg3UH+ckfelJnyYDXENcgVRv7VsqmrcbfFQ8LdA
	19HwnOHAQk3PxnU71a8AsGS45SMoELaT9g6T3ZRk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649432338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pP7SkwbCtODv1DeY/c3DJOXR+Bp7raQQTqfG6XKrq2M=;
	b=XCKUj78XGZeDMXEk7IchMcwRUFVWCWY5NO11fIv8Ynjcjj/CIpPzp63albnHIS87
	Bg2o9nOoqGJrWBHdaXAq8RmL6nlmySEqIQyK4z1cq8OmAT1PusL8L2N9vUtBI67Qgm6
	WSYaPloyfT3VsAWGxXdMcsf0KrCisEIxdqZiVsxQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018009d41fcf-6e9df4d8-5232-400e-8c78-5acaaa5c66e6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f1e9b5c1da33ace472893e760094afbdda828453722580c48e1499d853629e26
Date: Fri, 8 Apr 2022 15:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649432338
