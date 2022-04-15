Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3201733F4
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 23:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650064558;
	h=To:Subject:From:Message-Id:Date;
	bh=cuExNXMKv+MBE0zd9Z5annJJ0An+LlgeB+cO3mr9Uhg=;
	b=iubyn/CNQrSG4dx2BBpINKo1szONdY2ghq8A70xPFKWDn+Iw2mRj751uxkt4P9oO
	RseUA+k8s5s1RxToY4Wn9qkZ4OoEAfEt+rpHh2vQTbpNM6f7NeHS2Sd4MPs53wWyVR/
	7Hobn+65n6KyEdFdnXNAyO55r4seqJ6xbT/aH4AU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650064558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cuExNXMKv+MBE0zd9Z5annJJ0An+LlgeB+cO3mr9Uhg=;
	b=iQA+meZPY7HSY8/R1mk4by9VtR7fyHEcAumO4d+854J1KajgMWJIxYe/wh51Ks6n
	sbTdjG9L0N0rFTlD53sR5d+K6xH5gqe4mznRS3Bjd8hNS9i+ijs1TrOKiBoJHep3kWE
	A3PCIGkEh9KZKrDbzRwarpSwRSXBt12wf4TmLGlk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802f8308f8-ca0e56d9-34d8-470d-a03f-32ceac292545-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5661dcc4130ba77e68bb3dcada2eec5e625681dd910ea8ec52c75ed5958b4430
Date: Fri, 15 Apr 2022 23:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650064558
