Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4557A33C4
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660069852;
	h=To:Subject:From:Message-Id:Date;
	bh=wu50FS3pHCV3ujXKgQ9VelA7ptZe06mnvsv26f7GL9g=;
	b=ierNktijBy5LfQh8sp69WHmGiL/HG0gNSALjMIu8Vnd4YVhbXDcoHC8l08rprrtv
	U9Nku8+RMbHc9tAioa/F94tSHmq64oSzDvLYBHWsaZrVCnaDQ8vTVwsh7imtRgZCWiO
	mBX8nzMWwE9AbqOLH0N+kk+9nbRDjnWqErlv+D/s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660069852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wu50FS3pHCV3ujXKgQ9VelA7ptZe06mnvsv26f7GL9g=;
	b=A8ohTbiK4SagLT/KxYTwKaVMut//pgsLatGnua6y6NVfoesf9e81S8hfOLV3PIGH
	7R75QwyeOJbTW8kPYrFi8G8CpKT11c+H20pvAPQ8o4JYWvOYavI8EeWKqtUxmYHNEsb
	Gr3tjTQ6Q1KF4J9eZFgBmUaww8/YpD7444JzTGvE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018283dfb5a7-7322e7e9-33a3-4eef-b2a7-24ec1df6026e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5098374a82975df03d6cd240a7009e46e4ddc820dfb406051585c1aab3f48c06
Date: Tue, 9 Aug 2022 18:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660069852
