Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65B78A3D
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658910052;
	h=To:Subject:From:Message-Id:Date;
	bh=Fey3kqKY3tJ7lBQIamrhi+4vKr3FSLtTCUBaz5V1lso=;
	b=j31h7XYEqXvZocbNrmEvSJJOcWa3RkExT+Ozg+ezXuQ3ZRM++65J+I9HRzLICkd3
	rJ9d0Pw/ySFAw6JKBjalf5JQ8MfMhzPpevSoNyjxjJyIsIqm4c38lPHHLyjE+4bx+mG
	Yz5sGKU6P3CF8TMOkh/NajFHQZEtQNHg5OpREuKk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658910052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Fey3kqKY3tJ7lBQIamrhi+4vKr3FSLtTCUBaz5V1lso=;
	b=gllOl98RRVsKFZWC1kJjyUvgEfVLtJMLDzrJoin4rC4k7PniHl7xUF7KP90z7ixJ
	0/pll0kl63uLwqs3gRqToj5AFxw/XyMhDEWH2YOZzUoht3oDlGipcKcHMCbEMzcW8Ym
	7fekktNjwQhQ716MBfBOB9v6G1Q9R+jcp37GRJSk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823ebe90bc-944cdb62-365b-438b-8fc9-24d789bdc032-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 494a6030fbea2680db092c838cfb796511b50779d00a72106d1a70f61bc28fa8
Date: Wed, 27 Jul 2022 08:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658910052
