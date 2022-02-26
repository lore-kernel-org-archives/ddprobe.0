Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E40707C
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 08:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645863385;
	h=To:Subject:From:Message-Id:Date;
	bh=YeBoRkZMNpxRBC75riZMzm8IV8z8CPkJiHO+qQXPrrs=;
	b=k+c8qNFlXEAzecPOYEOk+1GrQm9d+lAiBrdvqLOuvJYxvnQHYzFm2JK9tJar/x6T
	K2yms0O3UzmbIo4dcmldzP91inzsUZCuZG1E09i9u8OG7jFk+qwWfPg138mriTqgtOB
	nA1/1FeqLVQ4h+0F9Xn6l9az3TFJCpuC71RO7i4w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645863385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YeBoRkZMNpxRBC75riZMzm8IV8z8CPkJiHO+qQXPrrs=;
	b=g30q6i10fp1C55d/cjKweoaol7ONWtEP5vIsHFyQNmotG0QaUWJN08hW8ZPbzs4a
	Tjtqyd9vh9e7R99zCG6jfwpWY7iZc+f71lsG0L0nHIyybvnvT+IA8uCAuoREO/HKUmZ
	0Pj/2ESMuSvNn/Gd0qg/S1y1Xsro3cDP06l9IU9c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f351a36e4-aaf6cda6-d199-42c1-824e-8d872c8371f8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 655cadb6df67e5a85ce04453553c38150924d42d2745a7a484a549a613d25532
Date: Sat, 26 Feb 2022 08:16:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645863384
