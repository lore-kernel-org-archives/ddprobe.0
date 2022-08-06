Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79E25EA9
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659746452;
	h=To:Subject:From:Message-Id:Date;
	bh=hBWEFN4mWFZJ6BGPPsFtypAy9x1png5jYLB9DQMtc6U=;
	b=RniWw9OV8UV4ApuPUotrCfhzUmBIa2FH6gzSwT+gbCjA65KAtQUw9q4YYYV6XTEI
	AkpuOOc7DvJJlBkj1utqp8ttikQ6qtAwZJ+7NsOgaNJpNY5AO3P89KZwF1QCJaDsDQY
	gvDbYpmOz234riymofmSYflxghumtPDVa/9JAObo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659746452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hBWEFN4mWFZJ6BGPPsFtypAy9x1png5jYLB9DQMtc6U=;
	b=N0oB9ivnfDZvKL5mcCas7mew5SX4oeThc6VnBtyXWGXi9p9tolJagqFf5psrxcmI
	GLQaqCr5KQ3w+MO+ULzmVrm+lYAWKc+4uWeBvZ7xecJeEpVj59DErR4qt2Ac0gdOiip
	rURu753uoSGKVQiqdzQU7MYzF5wtVgcg6fpdUvEQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827099051b-05aaab22-fcec-4217-8119-53adbb185164-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 126d1b1adf9cfc249423a2acab40349ff25e3c6a5aa6014bab1f1f50c75c8b2e
Date: Sat, 6 Aug 2022 00:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659746452
