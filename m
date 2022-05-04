Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E741320F7
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 05:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651642198;
	h=To:Subject:From:Message-Id:Date;
	bh=RjLtpIpqt8BWxrzXzd1wwQ3HRsAel5yBeSi/s3HWcKQ=;
	b=c+55GS0cT/b7WZXOyO02X0kRqRBAYi5YyYBAuv7B2jVME2zHCZQ/yCeSPi8830yC
	t1PX/kR+m+2MSHY1tTc/CTYL4XaRT9SjrB2g8x2PiSPITpZ1OoAAR85W0uytT+sr6JB
	LFw56c9XQiw48OmxLxfYOQFTh3/R2NN439ks1GbY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651642198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RjLtpIpqt8BWxrzXzd1wwQ3HRsAel5yBeSi/s3HWcKQ=;
	b=IEOPH0qLD9cf2qaDaN/DnE6O/7SVJ10Y75yHjdz9lH9JGJmSJyxwK8WQxAbKM1UK
	csYXii9dY42URFNrd4iOE0HFuyTb9qELiZLd5JR1atsu+pvGXhZkAtrJd0Jk8GCOG/B
	e6BBukU5c55M0yVULft3EwJn5F5Xi6Wc81TjCSaE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808d8be8fd-452f2154-2884-4d31-a379-63816e086451-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 78fb62b2976e651f2e1741be4c09e294d3fc364f8b264d2ea60eb57d87273b53
Date: Wed, 4 May 2022 05:29:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651642198
