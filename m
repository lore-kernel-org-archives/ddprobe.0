Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0E452F2E
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 03:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645931484;
	h=To:Subject:From:Message-Id:Date;
	bh=7zneAK8iAgQd3zUVYjnbUX9pBbzKvY+tGOrdKv5XeqI=;
	b=Bmudcfw/A+JlJnppQ5bZGWRISYIG5eC8zNnB2AfyLmsWelr1ebmHJPAXplc4P28G
	ZBt2SvR1Sgh3Zj/Fx6cQ37j3rCpglg/9E5AoLpTv8AHKOmImz3bsDgM4yjLZEWAXmEr
	Qr2mjDBpZupqsxl5hbi25J2/CZA6Ucc/zBWmLhjc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645931484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7zneAK8iAgQd3zUVYjnbUX9pBbzKvY+tGOrdKv5XeqI=;
	b=Ph2n9I9I7Wt3Qf3EyFmZYFzTIpgoCE/vZAprYbR5iQQHnW53t14MornsnzkAMQem
	lsKNsHuYgg1Uw04jJn+bVqFfvKTD+fnmgEuI618w/rzWcyZx9p5G2V0/sesY+WqO4S6
	VtMkDi2eNp3whbtM2ls1au42PJ4Yz/v15mZsRHtY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f39295623-7d7106ae-02ae-4c47-8d6a-04b684c75b23-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 55dfef11001a6b1501efd6a87cc984806499ea5d63b31445d0e5b2c6b6cce682
Date: Sun, 27 Feb 2022 03:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645931484
