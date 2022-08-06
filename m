Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B2821C04
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659802852;
	h=To:Subject:From:Message-Id:Date;
	bh=AZ5zLKDkt6UUd0QkDvY5VIJImwP9OXJ2tm9ryrxDyGQ=;
	b=NgBgxr9ZcLTT0x3nuFZvLxO7QJLqbx/43pxi1FOvqAI6vOpzxp6oDKffFXtOPrm2
	KZ12eaeiTWnuTsyzC8PV49R6/zPePGVblmncGixyyPU8kYpUJ1684qzMxRmsvZ6aotf
	JyZqyY+Bl5wf/wgsNaxSQeK9s7sxQwZ74cIxUreI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659802852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AZ5zLKDkt6UUd0QkDvY5VIJImwP9OXJ2tm9ryrxDyGQ=;
	b=aXt93weqDL/dFioPFf6K9JfKuSoy6Q/4ECRnRA2ljXkewKE48IfLzRzGNwhA8mAZ
	kh4ZE59wCzDjkU005EBYkv5uq5CPoCSB0FAL7udo+3dozh2dORu6SlzvMoaiJf7oOW3
	c45WW+fLsnK0I6IpJSHSw2JTsg4NV+ftCzvyFcsM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018273f59cc4-505a296f-9454-42d4-aa9d-f1114092aee5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4d9282fe903b94e48fe1bf1bf1cd374725aeb4994adaa2bf9775ca6144ffda8c
Date: Sat, 6 Aug 2022 16:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659802852
