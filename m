Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29CC51360
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 06:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655966939;
	h=To:Subject:From:Message-Id:Date;
	bh=IwdQOC/g0YARdtkm8euFByL9lXQQvhwGxHjpA5pVbh8=;
	b=IHcquF71XjANNUtS1OgEUaXSonVehkMyHwMxRcPcbtbAGfU2hO1X2+NIDPdDmSN7
	43f1ID8yOdtn/0Dg23kiFfS3pDsbdPk1FcmyQ9hM6FBHI49VcAm+12wCEROxwK72J+3
	6bLLZ6u++4CIY32NSx1456Q4iEE6cjVla52SZ/VQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655966939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IwdQOC/g0YARdtkm8euFByL9lXQQvhwGxHjpA5pVbh8=;
	b=JUfllTLUHpb2MkDypyROlyjWIy5yGhF+s/KFDprAUOkJUPEWV9t0x8RcWWywWKwz
	WThzGGtmHD908sIRo44j5I5zJ1WBo45JhXTLC9qTWC+6k3bzOb7tK4mHoq/ZoNuc6a5
	oH6CdbNjVsgcGXkoWevqlwZQaaybNDBC5xdYxaMM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818f5238aa-063cf1db-3ab6-48e7-af0b-dd2cdb76d160-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 18c6a0c868bdee739d8f28654283c895bcfd74607a5f8782149492393d750151
Date: Thu, 23 Jun 2022 06:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655966939
