Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6958F7A
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 21:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659992452;
	h=To:Subject:From:Message-Id:Date;
	bh=NINDiuHhSB6PvyojRsOdTOlqkY87May2zoDMZQRuS+M=;
	b=DP6fV4K4gyIDZJKhWq25AeR+/QnXPVEFjWTVoi4ooL5B7H8Jf7rWuM5W/7c3oGHd
	8u87/Xy3gkh9w4FG4gvtnL5CP+tB8SOIocl5Uv/VTrf/mJgbZIvPbDzxnBBl+k4/TYd
	ymCiCW1GOXKH2ucrHWbIMsA4E5wCWO6lBfcU+BSo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659992452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NINDiuHhSB6PvyojRsOdTOlqkY87May2zoDMZQRuS+M=;
	b=UDP1ZuuRxilm+EqnIDbEcVx2+Kf/H9moJ4BqgkpiypNSJ1H+cAxeXtELoVYI5B2+
	Rrhh+Jfej9pVvYk5Ln9tGvrrIdMPdSFO8v6yA+mhQU7XRyn9946ErrvpYV2jCakBrAo
	493Un37XJbWXAcQYih/V+fbnXOBf/49cMn5/UNB4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827f42adfc-0fcb686e-7f51-4f39-a6de-e93854eebede-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 245416948b87f3e6a6df9cfb7199f6b7072ebe5981c97c2e4e749560abcd212d
Date: Mon, 8 Aug 2022 21:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659992452
