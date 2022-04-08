Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8051366
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 05:08:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649394538;
	h=To:Subject:From:Message-Id:Date;
	bh=2cmooi2HfKLeoLC6WRiHGog4MXszqkI4xCUlfY/F+KY=;
	b=O3Kq2VUEnGvYkXxVier9oqne/hJRrRuYqXDCyfNioTj9bcPPk21NeacefetBwILg
	QH134PxZkU2GhxEjLVSkZHMG3tGqF4vL7DZp1ZyNjYWdBTr8CvkyubF1gg+rgRmWZvQ
	mBwiltqFZl5x8D3W0lWEH3TJQYeB7EZx3h9y6kzg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649394538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2cmooi2HfKLeoLC6WRiHGog4MXszqkI4xCUlfY/F+KY=;
	b=FTM3703E2PM1gE89pjGW3tuOgvI/Nl0Ng1y1nAc+H0ZnGNLLwuNqwOAay7kBA//j
	U+XZi42UuXcOfeOW9AtrYkuk6VK0+oFVsDddQ2ldxemnPea01v1HwlKa6rdiENnts+d
	C9awY9U9Mv94p6IFOHndykBwntss6dPiljcZ4BRw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800793572e-290cb2d2-ee3a-403d-aac9-b9b8221b867b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 94c030c5f001fddacead50456cc9c593904ea6f57eacd7192504c022783aa920
Date: Fri, 8 Apr 2022 05:08:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649394538
