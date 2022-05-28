Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A331FCD
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 03:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653708119;
	h=To:Subject:From:Message-Id:Date;
	bh=WfJB+UdyxRTKphFz5ArX7mjO14zTRJ1rqLzv9Sk81eY=;
	b=k/YRnzOLTGrs0HheJRLFdentpOGbCZ0/sKQBm2PZtxAq6wtoAesX0EWXRlD9Udmi
	5Mun3UhUy/ZD4qXlbNhK1hSbRDMbjHlrmqJ0LAqKf+KiPveSeUYNVit5VrFp//53UIL
	sEtqi0NvIcKLTwKlws8NKjijuge7dKNi5qb7fbAs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653708119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WfJB+UdyxRTKphFz5ArX7mjO14zTRJ1rqLzv9Sk81eY=;
	b=TZfq/3GyQ24Nz19X2rJYjNR2a+8aWi9xVnEdxPpTH5tRyum98mt/xkMm2zGqQGwy
	KaArGR45XzNWxkS2z9T7Nnq0HFi41/k+iT+kdNvuYOp18sggxEOcDSnx+BELhqEiEZA
	toFPie+MNDDoCNXEcNBXiqv+JIGjADE6TgYeFS2k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018108af5d52-4f0220d8-dc48-4b5d-a34e-b5eba7cbe73f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 051c090ae69651422989a168f73b8a9548530a741946039988f53dd706503104
Date: Sat, 28 May 2022 03:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653708119
