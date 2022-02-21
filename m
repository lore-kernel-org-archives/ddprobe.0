Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C759A20F9
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 05:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645421785;
	h=To:Subject:From:Message-Id:Date;
	bh=PDhFdR8GuhY6cak55cULWg2c+JS+6f3QAsM+RCOv248=;
	b=gxWYblgoXjAD6i/k73Ij20BYObhVmpmrBVlBRJ8v5tFUnOVdjyA5PbfhNcTHcuXF
	lBT3uft0gqTEGLJo4D5b0WVyYYZ1Rj6s8m9CCNJA5TbLseL30YgZT3NTzn1WMspcLzv
	T59jwdZi5ETB3q1zYzEeGIScodAyMjsBYFZeqWNQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645421785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PDhFdR8GuhY6cak55cULWg2c+JS+6f3QAsM+RCOv248=;
	b=fPv0+7rM0b40S202Iqp0NYs0t2raHpiqgK0JpR1aArEAao+SK17B5eyHhdjgRf93
	3DGOYTZITxRZHfYa3Qr0W8ZCFQdtgyGszmeXsYU+cG0voXeCYCzXctx4ztdbdqDb7XN
	6AOcpRFG0A8H5kesJTgnQHxadgmB1Yd5He8XTWao=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1ac7eec0-1d7cc566-f46e-462c-903e-478a3bbaf3ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7f8bef95d068c10a7faea592e4c1bf25a78390b16636075b044e3c7a85d0aaf1
Date: Mon, 21 Feb 2022 05:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645421784
