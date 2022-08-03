Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D51137D
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 15:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659538852;
	h=To:Subject:From:Message-Id:Date;
	bh=tGbtXr2EZUZNV+/gPpbw4c8iioIzwRQjnZU82EoZ6ds=;
	b=YjY+RmIHH8mm8a9u7sH2/uD9KC1RDJTaQOoLojGVL8wLl6MsaTLszUagiaIKR7wd
	zzynUl5QxW1Rvbn6sUK3NupyO1OzOZAav1lk3SnYyOhaDsdEfViAQFg0ZpYdrWbnLhx
	wt1a2lL1i4OSSDoYk9saC+pZsBr5nXpg/+75IiAk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659538852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tGbtXr2EZUZNV+/gPpbw4c8iioIzwRQjnZU82EoZ6ds=;
	b=JEj2bMA80SDRTeBsO7RRzdSCvV35NweuTByHGFjuX6k93ja/sHrTsSYjSJYrTf4M
	VkPm2UdEY3sfh4wye2DSQh9TfWBjjgITRFzgixCChK/zy7SC+eHuIim5YEAhoKq/q8l
	rvb/EE1dDfZ1zqGyql4oLTpo/ImLDdmNuRGOENGo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018264394ac3-48bbb150-de47-4b5d-98aa-7f817077953f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7634d0d05288e6ba676cf755e51be542ac6b2ac7a1fbad93eed5fe749ebea481
Date: Wed, 3 Aug 2022 15:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659538852
