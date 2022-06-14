Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EE5D184A
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 06:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655189819;
	h=To:Subject:From:Message-Id:Date;
	bh=E/EFjy8lnf0Z1Pky+xK/bEOL4d2i11hp+F7Qaok06pg=;
	b=MAIPDbfB5q4y0GKBoJ+xBMOZr0bWigxG9C93ChpIujWPj74BXCV4OCtiv5lV/A4o
	V5+fNpXWPIORMZWSijncUixMAGhvOYZywjc9k3GhGIIKVWbSCCZeihRDE19+YpO8qpY
	4A+G5YyZ98GYIGozMTgtMbMVmGBq55Qdx5fkTOVI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655189819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E/EFjy8lnf0Z1Pky+xK/bEOL4d2i11hp+F7Qaok06pg=;
	b=OGTmVeqp0BalruXshS8OmVHw/+Lmj+XOAi0T36K+MQvsUS6Hg8e/OiasL5PT86E8
	9HYnmdP1WQAwtgahdIoM6jC3X8Ql+8Oqj8TradVyTqWtIz/5KhNXqVvTi9MoaTUWewf
	19wvxgzczE7ruAoquyAmVk184dANnYQFJldlCyhc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018161004f68-ee93eae6-a52e-497b-b541-a22e98d9609b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5f7eb790ff09043cf649ffa847d4d2775700b42c8598954d38a5e454ba713301
Date: Tue, 14 Jun 2022 06:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655189819
