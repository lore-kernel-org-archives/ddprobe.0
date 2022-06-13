Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B4951364
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 11:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655120459;
	h=To:Subject:From:Message-Id:Date;
	bh=uf1hvY34iQEPJWC+wGHmiWvi40/j3NlBqxCKmmj/f8o=;
	b=bpJq3ymCcNPVFlsdGoT7+CfnCWSmU6hZ85nh0zupXTMivUHKhPSAzGlP5bmQDz4I
	G4iMVqj0EIZuWmkSD9GgbZuZT9M6vx79R3crjf6a4ynWd7tFHrC0Q89C6EQ6NS+ao4E
	x68OdEINHdWvnGK742p2jeZ26HfAhLP7wJ7jooxI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655120459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uf1hvY34iQEPJWC+wGHmiWvi40/j3NlBqxCKmmj/f8o=;
	b=O6nnTrIwhBJ6CalzsNZhDiaHLSesWyPp79XI8+uZPM5bL+XXNHi8rasiqLAzbzw0
	jhr+cMZZFKfGZoq01AWM9BkkJ10WxKq+amHPu6wBjaQJZ8vwLn2CWSfqEEBi8/CgTAQ
	f4npvSk3Qg00zg8iz8t+HfEH5+qJS5gWZgojtCrQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815cddf629-ace66c10-b363-4f4d-88ed-e6d5603aa335-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ade9f802dda298e4e7a2165904238d9817b11bb0677e5229091c306f2841b783
Date: Mon, 13 Jun 2022 11:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655120459
