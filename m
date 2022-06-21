Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF7D7483
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 19:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655840759;
	h=To:Subject:From:Message-Id:Date;
	bh=TaJe5FfQZDa85cSvzTcU1Ltji0EcmhD3QUy3QueRFZ0=;
	b=GgfwIt7Uwd8ryZ6oqmaNv4QW+kcuoEon/a+XaJfDFCoon+4YXmULooXcU0/hx5/1
	GVYygJqqROwsVFPpGXdyYSvGYxpXToFR2XE70AvnKF7ZPrEIwg+HRTEmEYE1cw44ixq
	geY6PXVdS9m1UB7h5hq4/wI0dt6s9b0hrjwb8K+4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655840759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TaJe5FfQZDa85cSvzTcU1Ltji0EcmhD3QUy3QueRFZ0=;
	b=GuMvBhG4TljVC0NjVztyHtlQ/Cs9isJnZ119IJ8qPjHB2rVSm9NClYgVjX9ItU1d
	lPVn9vKNDRWHtYxOJAQlXSBV1VHHDXAAUDvMnDHF7566/CGNL2M2fQxyLXgeN7a8sK+
	VbtrMuhrD0RjGdPPN6ia35YqxUPEZnK4MpGHoT7I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018187ccde12-d2c95407-05e5-4758-8b33-0b06f17003ff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 37fa2a397ec169b79eb946db0c6d33299da9cc5640030c534fa146e17a49d9eb
Date: Tue, 21 Jun 2022 19:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655840759
