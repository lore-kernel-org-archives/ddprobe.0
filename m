Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 207147E
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 12:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654347419;
	h=To:Subject:From:Message-Id:Date;
	bh=SQIufKMIqG+zftF/oRCtnqtd5BmVB5eD9WGauafrf0U=;
	b=UxFen5lp7Gt9zyvg/h9NeGRkG4tqNPve7OG7n8TDr1ZuxNFoyhdR4oS1z95jlLs1
	1q8hIuUxxHRS6bkDu+d4ZkIVZdiPRo8zBxgxVusYVG8h7/+KEvs0r97AEE4GvjaiO9g
	YIMMzC9wy9tJnsZlnPJeg/0ebTWWlTfT7k6em4qM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654347419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SQIufKMIqG+zftF/oRCtnqtd5BmVB5eD9WGauafrf0U=;
	b=HUKLoeF23/G249EyNhqh0yGSV3fM3pZFzVCdzUbbrZ0ntHvpxJHwvpNtyrTr7aSY
	SI+qMp4mIJZPt654Rt3/alIyvXqb5lFXQNf5ts58zvJSCrYQAr+J4L8OId9RxymYHqv
	717hVCAw9ITExmKx4Ihluoe7lXw29ZHwQPWv88nU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812eca4e73-366a8b16-8dfc-4d37-9687-dbacb6ab5ddd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 58cf9b4ec6e4381127e43c5a32747784a13c08fe4387c768ff6d8951c94924bc
Date: Sat, 4 Jun 2022 12:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654347419
