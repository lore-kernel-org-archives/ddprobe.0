Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1960738F
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 05:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658728612;
	h=To:Subject:From:Message-Id:Date;
	bh=mGw4FOEOHWAr/cMdoftGvyOG+iYNdjUarqYo7TOieYE=;
	b=SZyEocJ7+kd9QXYd/Mirpvpu6Im0Aia3e9G26xLa1tk1nFHFDREiWVSEa/hVnM/2
	qpMeOVc7QyRQjrs+Q7pzdH7svuTKRIRuEisLvjGBng2nZRGsKaT3p081QgY9oO6/yP3
	gEHfUJAOAtX1/fblPoisVALPCIo6XcX5irlgnVRs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658728612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mGw4FOEOHWAr/cMdoftGvyOG+iYNdjUarqYo7TOieYE=;
	b=Fx8r6gP4+ctoXB5ooIukU8I4bxRxJcDxVuDmOKZVakONKA6uGkjwKUfYltiuQ/FX
	UKmxFTeklPDOqcZhVDEYLqYrUWdqeSFrCl60wN3R+d5FDwj2n7HViZM8k+TGDkPXXFK
	GIeiAMqmGNbGRV1FTLs8r7GDvIDpVPujzxJZH0V4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018233ee01d5-94d0c010-075f-430f-8afc-c0646f24b11d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab2b4ab3790bb6355eba0105f9ee230cd6f3845cec64f20c6b00ba80cc19649d
Date: Mon, 25 Jul 2022 05:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658728612
