Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2316D23C7
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 23:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654470719;
	h=To:Subject:From:Message-Id:Date;
	bh=CJYx+Kmw72EIqs4WSLjf7Y2IwuB3o1KrgacwSV4ET4Y=;
	b=VEO956ZJcHzMP43BNyyasBimrQeJqOjnhpIoFOz868SS4t62KhNFW8qG5hjuLsoY
	heFCDX047OqlbJXnhCxJbZg6f3ILZD/YhRrKlLEEMRR9K8exAbNjRh56m9LtplVmVsy
	yYMwCEsxyOp/KR5A01uH39vJF6B2hCtKURUbsY9M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654470719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CJYx+Kmw72EIqs4WSLjf7Y2IwuB3o1KrgacwSV4ET4Y=;
	b=anFU0YrXLri2lYFOHgo5JF2CpTJ3MQnTenwpgCoO9yUxWJDAJGND3oyUsN98t+xm
	NRiuToVVThlCyambT2I7rowDdyl9jxbu4er384hguy+m5bmzcQkSByqUsedn2sLDIEP
	28SxDXIgq09hKKfZ935/1jx/i15OgFjrZQZB5FEg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813623b70a-1b5768d1-9590-4acd-9d7a-84ebe1cef239-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 73f9c3b3d3dc67ad3aacc7e81be54affa21ae867803c4e9f95ee265da555f58d
Date: Sun, 5 Jun 2022 23:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654470719
