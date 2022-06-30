Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58EE5A35
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 08:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656576412;
	h=To:Subject:From:Message-Id:Date;
	bh=FNxLpLlZSnUj/pBoPwktwwQ0caTDzf3GV+EKch5262c=;
	b=NQTBmQS6SEQzk8r+QH1FBP/PHnOVH+3fP3cmeSzsytxrekUevWQw9dHe/DXn/Za4
	EArKACA8v1m8AXEml3orIGy3OwiuMV5fi/sfac63EQCDXLfA1pkIods63jnzWevXSuL
	vM19A8NLoZlU6eWXQT6TflyxxeRhsYaYhbti+HsY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656576412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FNxLpLlZSnUj/pBoPwktwwQ0caTDzf3GV+EKch5262c=;
	b=KW6U6fWK+Qfbj8eCJ+yHSwaaSE5Juv/SYfPoMN5VU+whN71WnvjANuzvqXNteBt5
	vCwJVyKH10l+vF2yUOhUypgQxVJZ9pMeeva/WfXmCbKoJuvBCIO5UEJ035Ey6KGAJXb
	5MQRomXvsIXW2YxLzOKChxqdooerQr8XZ0CsKkAE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b3a60a62-3c45b57f-8127-4863-9da5-ab637440e6dd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 78d41da036fc7d088f3685bbfca15d8cce205f8984dbcd38ce6477e7878f9918
Date: Thu, 30 Jun 2022 08:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656576412
