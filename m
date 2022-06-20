Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 519877F6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 10:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655719199;
	h=To:Subject:From:Message-Id:Date;
	bh=XK0+Z8e0xqLYzlWjGF+t6VsidNbeUwGapURDMKkswvY=;
	b=HlXxs5qCPWwRxcfYVh66pGMplEtLefonIo48kYmvX889GDXKPU7TrGOU1Eo8qA7S
	9XecweRUIqfK78amQvGQpGnJ2sL1Ww9DVobPxq/jqhNVTwWlj43SwWdnlrqASYzRFQF
	Bi2g7j7jqgH1OzaChqCyEe6jePURVFOq5qb/8sTM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655719199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XK0+Z8e0xqLYzlWjGF+t6VsidNbeUwGapURDMKkswvY=;
	b=F4Zw8W1xfwm4L1ZJR5MljcoPGTljaFQ1ZVAir2PexrpVlKkWhpGkifTUHBImtRzh
	nF0bVGZ0lAKBXuzfEPHNledNqdt2y7kkO4GcnI5ZiMwowVLM5jB7FHldEGjE73yEoB0
	QrzmEO73BMzZOMDmbfS1FIHlmqrftuY9P8O706mc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181808e01ed-9cb2aa47-7ec0-426d-8bf6-b3b0824f9942-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 42e7c6abc8174fd58dd2f06f3da108bd9c1a050c84dc02f68c25504bad39201d
Date: Mon, 20 Jun 2022 09:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655719198
