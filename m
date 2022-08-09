Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74D7D5C87
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660025452;
	h=To:Subject:From:Message-Id:Date;
	bh=KF8/Ys4RyVn7JWB7cSi4Ah6M7yMX+YBQDJrRd1qYqFE=;
	b=WhCREG/yfNwR/inyTrWlVhRB+X1XoCWHVJ7tvJQ44z8AUyggHeFKBFrtn0jp/8gj
	UPeXP9SxpZb87Gu05qHDSL2r0i92WZeIXkneRhVUSUwHX1e2OfGrDI5NXYV5StTmz2o
	WE/HkH96Zm4Icg/KdkhT0gra9cs52uZyji2J0JaM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660025452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KF8/Ys4RyVn7JWB7cSi4Ah6M7yMX+YBQDJrRd1qYqFE=;
	b=IpGkwvwSoFvOvmOSQG172vR02h7LQ7RfQM91j+4IU4BnajMAIv2ERaqtb1cXnVjC
	HW5yi9wFF6maYZ6Qm+jj6tFQbhFys9dWEpUvRvNYl58rR66vcgnpDsZpeTdi6aZ8prr
	niL+ZnY2X0LqF4iwqxGuS+GQCv1TN3EBzNH9nj9M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182813a3822-6b3699c3-9dec-4e03-bbdc-22b7313e27b3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 23ef8df835c78d760abe88034feb92d5eb1475b38b1008368a45506da0012048
Date: Tue, 9 Aug 2022 06:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660025452
