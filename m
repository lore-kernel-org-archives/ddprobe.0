Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E79557A
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 01:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657418212;
	h=To:Subject:From:Message-Id:Date;
	bh=dYv8QvJiDFxXKyL1H0FD7JaJ+8kxvTTo+V9Uzrs/8p4=;
	b=EjH9mLXEzTcxvJbwddtqB/u21C+cQ13op9yLzHaRcj/SvA+5X+rqa7HF+FsK6ZyT
	qGNwYhnNcfTv0TC1yAw6d5ZenXAnxFiwWSOiiCVdz/iJPeGqzok9Lp+gtuW1uT50mc6
	zZIkmeyD5AtdYVg9GS4I+BPPWkXmF53/ZekvZZ+E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657418212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dYv8QvJiDFxXKyL1H0FD7JaJ+8kxvTTo+V9Uzrs/8p4=;
	b=P+vGxWKMaqdrwGZT+VKaLB0oy/78sxkxqyIINxnsqRlP1d9wANAWY8EFnlaakOek
	xNNkZXx5F4rjr/koqvHD13fO/rCvc4CZgoN1rGoefucJ4S/dM93wO8wX4DEr+BiTFWr
	chNMeXnUWohGBmxB1StZk71FDBwjAxdyi6sTXIwo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e5d2e3bc-57f26a8f-d3d0-40e9-a4b0-b5050827337c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 81ed0212aa94e47875c596cf0cc97c1db41f936990c492136ee80867ad566b65
Date: Sun, 10 Jul 2022 01:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657418212
