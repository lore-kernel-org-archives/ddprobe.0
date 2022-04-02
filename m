Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6187A
	for <ddprobe@lists.linux.dev>; Sat,  2 Apr 2022 23:23:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648941838;
	h=To:Subject:From:Message-Id:Date;
	bh=ubmJEaNAwDmvKA9IbUYKTo1KeQQLjOhnZvn85AVmDdg=;
	b=ipwVVcq52jWpqdzfDsLMGZrXAG/lHvG/pWxvF1WN8tj154wRVWZrmZgtwbir8xpm
	jna8w3ag2JzGUdCoELXqRCnGxC9tGksR/RcOFlvfvMefjuQ2/cwUplyEIHbcM2Sf/Gb
	WrIhUSw47lud5OnUiiwb1iO2hZLe0cQY2X00o1TQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648941838;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ubmJEaNAwDmvKA9IbUYKTo1KeQQLjOhnZvn85AVmDdg=;
	b=gRuTRphWT5TAClE/qoOsjmH7pin4WirG5MRnfSZo6QHeG4yKWs0IN1uZkc6UzlGC
	8jlx4Y6X4Lk9BSufRRi8mh3GIsQezV+lT+iZYNZZelX10q+TyWOveZqDA7Q2TJ5288l
	J3OmE3OqVvMg93v7ntGjnL2b/1dHJgz46XGidxlU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fec97b00a-2d7ef905-9b24-4818-b527-b9d9a6220cf8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3a3876ca79791bfade6cf854deaea86ff8c381212d1a6ae919f4c8a2f1f92fcf
Date: Sat, 2 Apr 2022 23:23:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.02-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648941838
