Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85D4B7F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 20:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659471653;
	h=To:Subject:From:Message-Id:Date;
	bh=OKLgJX+bRrBBuxlx/NDnliX4AAFbmkAMjmMR6iX+tP8=;
	b=GNh0lGtvtnQY4E7HHwvmH8BllcFuQ84Fsbjr6n89w7d0XM2hYBYWkHTVvgkOe3wI
	R1t+chzNWXKQztvGKzirDLgChOYvbGuRVZI0hqGdbe6PnunBUFeHNG9rtsP60tpZjQm
	EdOS7xW+mjPHPcEkqznAvHRW1H+WxHoMRTnqx+fQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659471653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OKLgJX+bRrBBuxlx/NDnliX4AAFbmkAMjmMR6iX+tP8=;
	b=WLqzHaM8u54e4Kn6Ha2zIV3FxuGQVHtidOfY6PGECK0aP1JqBg05gYJDHbtHJlXN
	9Ab3auCn6vEv7vQV4DJDcMOi6IDYnS8FSECt9iO6/hwOSvLr+hUk+GSqO35gn92QbNf
	+jy4YgGXvEmdPVbxG+RFKbIV7oGSRYahyGm4WyYU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826037e70b-49d63bec-d653-43ce-b550-d67db72b880a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 63b0ec6a11415d586f1c3c056400a14ca10a1f0391c1c680204d850676302a2d
Date: Tue, 2 Aug 2022 20:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659471652
