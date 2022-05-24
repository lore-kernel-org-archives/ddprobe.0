Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 810EF7C
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 05:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653368999;
	h=To:Subject:From:Message-Id:Date;
	bh=N3vgLDQewELWCY/3KyWD0lf4oT3nbZoAImAO+BVHDGY=;
	b=caIpbT4rkWA58eZNvI3FdugDnFLRHjeebXBlLZU/2qbo1FimflzRIWdannonzTbC
	7JslvTbGDZmydFpQpjJ+R9L8Y68+FDRV+PSl4DLK3TvreRyIuMtfE5MrCcdbc6/UyQy
	8jtjbhZxCDN4dAxcz+SgFVHnateHyOgn6ff4SbBs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653368999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N3vgLDQewELWCY/3KyWD0lf4oT3nbZoAImAO+BVHDGY=;
	b=OFmG6sJjKby02DZNt39Tno6LCdLC+iCMP++pp9WatTa93cv66lDgdAy4InbPiEmH
	ukFcsgb8WJoVfZiZAG8lVQauSLsB7jJfTjy3+1XBZBUHiZ0i1O0NluDpWAGr0t3HoK3
	yiicgVoUgzo5UDSlJJFYCK3SrWzgz9hayRGDsSmU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f478cd53-d5c2c25d-1c97-455d-9fe6-3a9ad14c64dc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ac10399e18265c8cbf19ea0aa16f217ff841b75a674b4e44bd56708aa294028
Date: Tue, 24 May 2022 05:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653368999
