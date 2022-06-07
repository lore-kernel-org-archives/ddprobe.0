Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 087E07F
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 12:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654603979;
	h=To:Subject:From:Message-Id:Date;
	bh=oAT42yi/l5uHkqPcepq8h8jxH9gBQcPcyZ5f/kPWsmM=;
	b=hDvvg/1RoaHWWlA2XvFNuxLuve3R5rMe+YC44UZnfkVp9jEwHd+wVrykvVvKDHO6
	PADW2QrqhRYE2ViAHrl8eJ/bNzFf6aHcMaF6NH4eigQ3Y8hxmywQ0XGG5OouUSRNy0Q
	1OpV634+z0OoXObV3Adb5cTBd7p1LLYQE377QAVE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654603979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oAT42yi/l5uHkqPcepq8h8jxH9gBQcPcyZ5f/kPWsmM=;
	b=U4RtETiKmTTtey8YvBikVY9CapNoKpOsIaZGfWAzN+FiVYoxaw7JhdYQ3mw+QC6y
	uB4W16s4VUeW/1RPXUqvvufHveG3K1mfLzAHghq1C2UxeKdrcrb4dk/Z4CTB954DAis
	Ho2g9TrH47joM43LobRvy6Z2uz/c7wo7Me0ur9Pg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813e151a14-db438c6f-ab82-489a-8532-d2b98965e988-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6d3f3b514b3d1e59ee84630daa54c1c196b831af03651e220c641ebb0bdf3b4d
Date: Tue, 7 Jun 2022 12:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654603979
