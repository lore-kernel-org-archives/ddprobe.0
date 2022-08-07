Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69A747A
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 08:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659859252;
	h=To:Subject:From:Message-Id:Date;
	bh=7Yu3kQ/5R2w0NaVcxDjj+V9w2UyuHBurcKl53qO6SAE=;
	b=GZJxTPqIK43eJhx6svP4uHrSqwQ16klW/8nrLe1aPXrbFvmr1BlYFvtFCX86I0ql
	3uAZyCbYs9tAou+pLTCkKSzmB08GINGiRLaAopvrOwJv3T7wr30km94PJ2Wbu5ykWk5
	1sqSE8qkqNHq7Y+cSOieRu2RFrCZM/X4WNG4HEi0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659859252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7Yu3kQ/5R2w0NaVcxDjj+V9w2UyuHBurcKl53qO6SAE=;
	b=QLxvdtWb6+3J2WpANHojQbH55gulRBImAizXlyT6n8Re5IVU92KfrrQ5FLrcs5HX
	aIoEnw9/CQxKRuk+npsL0TaJr26IVFVshXF34jz5CIXfYgxJYVInVBp5+k5dK+bYFqz
	AZ/J9etgm8pNZesjeN1qDP5SIs8jIRvY9Z22Hrqs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827752355c-23d2e90c-7fdc-427c-8891-6ea229d98df8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3312cf64a320a282c0f4b6c00cb287711227c9aad85006894f94728d1aa4bd07
Date: Sun, 7 Aug 2022 08:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659859252
