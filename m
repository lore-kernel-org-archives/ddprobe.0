Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F04317A
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 13:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652879519;
	h=To:Subject:From:Message-Id:Date;
	bh=PFBhtCL9U69KZN4L4LtvvmwE7EGKe6PaTE5UXaAPfEc=;
	b=P1hrAUjKEZgZOkvitLUxBkkxX+YF4iq3cxieJX9POmFoR6iaZei5RFdhGKS+VyHJ
	ENphCAKz3sr3Moq4cOYz4NyjoXG9CYKvqDay8S4K9oFLwDzs3oD9X2pZtYTVNcXrn/J
	vVADpVHaR9pExu8OGeGucgqOxt+TqIphxLAEX4RM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652879519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PFBhtCL9U69KZN4L4LtvvmwE7EGKe6PaTE5UXaAPfEc=;
	b=OB9FhRtAp1tFrYgvB8xawl7pYZfC3fPcsc1n9LGbqv5iTWZwtR26yKCcjJQeiOKF
	X/mnpqDggcCd7+uC533kpb6J+k25bFBXgYj6vqkbqBH/MA5xxsT5X46nPpZrFxatE+p
	gt80Wo6002vif2JOPqSrhtFe7BOU5vu+7NDZduKY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d74bee06-f542e2c3-7163-45f7-aeac-98b39de9e4ef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7d16a18a18069ae9e48e74c3ba6548bfdcb37ebabd2d6ad5c97f66084c2b2080
Date: Wed, 18 May 2022 13:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652879519
