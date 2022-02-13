Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BDB27A
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 18:00:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644775239;
	h=To:Subject:From:Message-Id:Date;
	bh=4CVDiIuBu3bHvMh8rq/xvjDlsQPumXiS2FPkdbEERFU=;
	b=EIPQwGlCOi+mzS4wQ/wHqFOl2KLisc1UfMmUgKLLy0KpxHwuQFa7pDgshRP49rM8
	VDKDFKLI1jc+Qh0gsB3/xgwV7umAMXFTL9cr2ArIBrfm10tWpAexrZUwPJi+Ks6utQR
	adW6kdT8GxA6Tvuw3r5iiFNLvuUcO8x35Lu3uFso=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644775239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4CVDiIuBu3bHvMh8rq/xvjDlsQPumXiS2FPkdbEERFU=;
	b=C8HMq8EERKVOj+tKzFWFFD53k6FiVqWx4cA7ssVyaEfKkV7ewUcg9teoiPhoZ8oH
	zCi5/mS4vUB9OsJ8FytYRz7l6haIcHcPcum0iNR1YuVVFelJ3ziraN0WRofNaqWUEE+
	sysAKFHcXinI0fa6ayGCesGMpmtnst8suhHqZlqo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef43e6fe5-038ce7c5-7b5b-44e6-89bf-86d23e1fc360-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3d2bee881fb17394529f2298345eefc6c0355e59ee788ff19453f69d6e828ef3
Date: Sun, 13 Feb 2022 18:00:39 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644775239
