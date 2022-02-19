Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 671A05383
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 11:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645271784;
	h=To:Subject:From:Message-Id:Date;
	bh=4gGjAC7wVjRvx6bwep6LdPRwjSW+TIPgQYTZPzOAuIc=;
	b=W88cVaDYeTo/qQ4Ehd3Q0JqdV9Mi7giXe1Ip1iT44ubiy5APHMtjE3R3Ng8/vj3/
	AmQTSlZ0xILgaWR1Td9Qbem0by1+VeXQDiWXoOnu2yU+ef5dmloxKJ9dAfIF7BcuKYg
	sJ/YNxGoW/5ZXs1/ZiQt4bTbBAR61HHIuvmSwScE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645271784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4gGjAC7wVjRvx6bwep6LdPRwjSW+TIPgQYTZPzOAuIc=;
	b=DaDcO2aaRM0eNAVdDiH6Kd4RWh8bqo4UzgY3JwK97HK6ugxwFDjZaFD9Kyl9OBrT
	YCYzTqFChMyplU8JEuVBrqvtj6mPknZ1def5f/RjmDrNrt5LHHefunO4OVjkJ4DkxoN
	hn0ag+VVjI5Qfc/MCYKMXNR5nAwbmLZu14L3q22I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f11d71d5a-987c0dc8-2def-4ea1-87da-6f847a0a2b4b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e13858f95071257871bdba49374efbaa210e8dc4119f26a01fb8fc55a16f68b0
Date: Sat, 19 Feb 2022 11:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645271784
