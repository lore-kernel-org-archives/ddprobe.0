Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40FB62C80
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 15:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661008252;
	h=To:Subject:From:Message-Id:Date;
	bh=EH0iHindeN4xaDyQrJSEN/ZQTTnS1GsqmGNQmI6oQs4=;
	b=S40kjezljwA8yyvCIkJE4LZ86YtkNK7mZBDAYCvx4jXetSYx6zlAfrQ62IPmenvr
	D1DWYWlL77HU32FuwhJ0/EkJUOmV3SbPw7l+u5oZ1yX1uOITw4r8enNGRrUetAV1QWJ
	+lB6L5RrzZU52AeXZt+S9nR0+NoM3Lf1/XlI17j4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661008252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EH0iHindeN4xaDyQrJSEN/ZQTTnS1GsqmGNQmI6oQs4=;
	b=X4PuXWFqmoT3OHutXszgCsMqBvrY1/wFyK5KUNnJu9FXQp9tLSuSrXD9XxnzPjDA
	Ru92t8madQJcOGKw5Lbz5BOQPMUtDr40Bb4d+m06+Qbrk6+E2NlpWftd/ENHRCAtmRb
	ND5R7p2nihdPUMbD6loaI5s1OwAPznzRug6nyrXY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bbce8e91-0b3a6eac-204b-4601-a132-afd979e9e90e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a98dc3e998f8bbf1f14cb1d117895a73cf1d9c4b5ccfc21d38f40f91d008e22d
Date: Sat, 20 Aug 2022 15:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661008252
