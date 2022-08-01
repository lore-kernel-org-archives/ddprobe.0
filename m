Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5055F7F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 18:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659377452;
	h=To:Subject:From:Message-Id:Date;
	bh=ta8jqsfCE1hCecA3XeUhHMisBxuhrkIcvyXsbB5y/bM=;
	b=FeZbqz0ejXicuBLWHfXoTs2lCoKdpvUVd13a6EsTkJDmuFyrblW30Qo9vxPnQlJT
	Xd28I/4yif5Dt5H37rLsIzgBLxnwHpVDtsKiNdq8Gol3M90gpsekCSFyp/Vt0PoaNdL
	fx/YI1NYPUJ6zox65Do0IAiEsqBWQlQz4f+drhp8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659377452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ta8jqsfCE1hCecA3XeUhHMisBxuhrkIcvyXsbB5y/bM=;
	b=VuC2u/bYQQew5cwHvhI2Gn1DpuydsHqTJ9oAEyosAhez4GCtQW83qP6WGXtA7dsJ
	UlzXbyz6tuEaXoMszuzIf3GwIjvBSZCF0tv00AGBLNsbaDiSnQWontMNTPxWMcFOOa/
	AmUkZWdTRHyDhY8Q16MZf/pRTYhzeyI8m+cctcck=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825a9a8626-414e5360-570b-4f9d-a648-b7cc448bcf11-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 375ff7bf39a549672f100a005cc46c74aff871ac2d23606b6b04fe3f515035d4
Date: Mon, 1 Aug 2022 18:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659377452
