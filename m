Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71ADF2F41
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 17:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660152652;
	h=To:Subject:From:Message-Id:Date;
	bh=JPVdPHPfeRuZTuCBQvSasq/sRfjkRH9Thx7wJcftJC0=;
	b=T5qy4sB661xS4R/FDgQ56X+eRmXh9WZub3v9pb4OP15KTO4CAVagh/SxQGiTz5s/
	AACzEpl7osqV9whabuvrs1Crx4uaBNp+reT6X7hj/3sk+TEsWfSVt+LMw+xjjqzTyto
	JCbLRhdTkZODXZtKf05gBNHCVTspyBOqzWgTD3CY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660152652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JPVdPHPfeRuZTuCBQvSasq/sRfjkRH9Thx7wJcftJC0=;
	b=Gs1sLQ8+qSdm/NJmfSTlipHfZLhMPnd4+OvyD8LzlgpJKtpwl+0FNjffdZ4bIged
	TNJ32JJ2eYQd5pngWTUBi2xXao04NHxmmZ0Nz0v1p6JHBMR8nPeAmhl2lEqGm36022h
	aKqgQV1xVM6fieTssa7iuL/2Zu2MPHOWNv6t0mGg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018288cf2331-105c829a-18d4-4cf7-a450-721b241ae2c2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 09739ecd7118c78639323b312955cc2a3c66dd9fe6e8309cc0fdf4a42d09f39e
Date: Wed, 10 Aug 2022 17:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660152652
