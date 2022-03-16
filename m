Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76C881FB7
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 03:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647399684;
	h=To:Subject:From:Message-Id:Date;
	bh=9BvVJZMAIGAqnWneu3kuiAe5fWCb1TaoGLs2UEkHM+0=;
	b=cLtU+O2Hf9+bHENiO8wE9ar1u3eHh6YSQRD0otvIpc+xqGtCVbxJXEWKoJCeiacq
	xtkOzhohtHphmP1cuC//JoDQOHKRGLaxAIsWMKqCBRyJcjv+yAITjw+fqaFZY4k43Xj
	kH+znvDWxk+uCSuYGVcdV94xNa039QMfc+Fg8wwA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647399684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9BvVJZMAIGAqnWneu3kuiAe5fWCb1TaoGLs2UEkHM+0=;
	b=f45jFpiclygoHNp4GTLejzSShWc1y8ikuKgsN0dotwEUYr0m2Mq4oOXZwwJVVt+y
	kDp6BjpRjUWivX2qwW6Fr0tBzrX14HOfBrHNrlf6WR3tUc+/Jrx48WC8S2do594bFyd
	exCk2DMqGw1kDmkOhJBcM56txwRckinIHA9CCvts=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f90ac4aa3-60419d32-bde1-4388-9291-01390fafba07-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3e2f31eed68b4a49c4a2b403c5fcfad25d233244be0ae239701f2e11c8c34c84
Date: Wed, 16 Mar 2022 03:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647399684
