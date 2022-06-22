Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18A18111B
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 20:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655930999;
	h=To:Subject:From:Message-Id:Date;
	bh=YbbrdS9NJoSvOAatJVMH5xWu6B7NeQzWXA3XB05p6lA=;
	b=HQ8Ya84Y24YrbwWmbsmNG3FSO2eD0ynWwStq2dEtzEUclcmFrJWjXcZYySZcw9IQ
	dj07ZX9zueOnN7wHgjlUggkE/R2tHGfbHDiuPlExxIfB41Lccq7wPMkATQ0m1X5/0YX
	VZHpEOfsRyNt/tTFfUHYhk8/0q71/GN/KEN4wFKI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655930999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YbbrdS9NJoSvOAatJVMH5xWu6B7NeQzWXA3XB05p6lA=;
	b=DkgDZQYgNwQeDgul+2XI5JBmuGHrrDSFch0Yd9z03HRKuZQSXANqPKLd3Q1c8URN
	KpwJETTT2kSCbtnYEvcJfsweVLXGKuqbeNrslMCkbjzFv8Tknitc9UzCUWs9iBm9SG9
	1Gvl+GyBFSVNbjb6ZcM13UGqUSABjYf1i0W4+2mI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818d2dd1c0-91ab7183-eea5-4fd5-be3a-dca3eb98eb4d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6907c0dc3befacfd637c7ad561662120373b2a2b551c5d20b110e7ffe71f85a2
Date: Wed, 22 Jun 2022 20:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655930999
