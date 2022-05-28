Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F141E33C4
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 22:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653776879;
	h=To:Subject:From:Message-Id:Date;
	bh=iVRto3+9E1dwtda+6YmqAoF1M6rZSSvZnGDutU3Jxg0=;
	b=XNG9RHScWvwK7V4AQ3h+e3PPXT+27Kb2f17jEsDAsTPvmvAtTm1HNa8J2ZmOo9k7
	6FXP2V+7580Q9rcUOn2DrOyqoZvbR6vW8qJvKn3myXAM9DbD5UhxEiW0Nzc1SbAXLtz
	V3qmjlty5pRJNk47rB66rmfpxuKSI7nPy5HDpEdI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653776879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iVRto3+9E1dwtda+6YmqAoF1M6rZSSvZnGDutU3Jxg0=;
	b=SuP/8rF5qhGsHOGUT4XnSff4tcovU7G/+ajjnnewLtB3X/qf4AOiKSB30+39yHlM
	U0PzQJziJHkN4ufHw7ojXsGJqwY6UsI2/HUHVX3f/unCzN6LC/gEqzeGkxTYMpd1YkQ
	aF1/e9lur/qjswIbNH12HW4m2uPMmJzjSMjItTvA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810cc88ea3-6ab9f674-2b3f-4846-a441-e0d07a519862-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 33083983d992e09963327af88d2df67b54ad99010e30eaffd0b86df4acc31ff3
Date: Sat, 28 May 2022 22:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653776879
