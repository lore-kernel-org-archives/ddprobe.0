Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D2337A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 15:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659023452;
	h=To:Subject:From:Message-Id:Date;
	bh=pF0EQCe4xmpocL7sugLMFeuQfDFbLyGhHvBF6AyoQso=;
	b=M8FMB0vo85ayaG0feDDhOFGyJSwzTtuLVwWRdLWV3rqMPZhBEmnskYx9tlnYB2G7
	1buLbfUSCHSXHYi8bGGzL6OQm5aL8hGBrzJ/eFLjn26n0smLEXNxHCAVr2t97plIauA
	rX3APD0nYEkTlhhCo3z/KBH2Xc0ajtpuKje9wcY8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659023452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pF0EQCe4xmpocL7sugLMFeuQfDFbLyGhHvBF6AyoQso=;
	b=XBmxYVgSBm83kpAB4vajbgUTD4BopS9yaxhW1KEBCysLJ6bMir0OGelS3yks3Ob3
	HCvdx1QE6d+3ubuhd2m/HEjRgrkswaFeIq5fLd3AhXPuhRqtM2/xFfnPGMHFhpLfDZ/
	oGteLDTJIvq6UoDEDbtNQWZRqG5GszpeSz6zvuVI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824580e99b-90262f43-be45-4a36-af24-6c8190f9a63a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c852bf1eb67c0fee0b8d64cb10fd2cfde8855b0a9eb63ea55676ac747070064b
Date: Thu, 28 Jul 2022 15:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659023452
