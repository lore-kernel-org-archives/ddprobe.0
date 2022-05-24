Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A2B6628
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 02:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653361019;
	h=To:Subject:From:Message-Id:Date;
	bh=V8fXYMcKoqaZuTjSQGnTNi5KbHkZ20QXBh3nF3pkCZg=;
	b=RDN6nytZGNoDKybjZUUTZQLtewtOhUYjtuU0EDbEGsauqvXkEX9qr6g7WT3Sdz5x
	4kL8W6TpiR7tHpwuix07BF1gxSh44mMe7hHq4rzKx9pvNjHVihKukzvJlFXBwwOgsgF
	HyxpMO/LPe/6fL8lsmUEzhn1k3bEZnjMx0HjJhjg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653361019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V8fXYMcKoqaZuTjSQGnTNi5KbHkZ20QXBh3nF3pkCZg=;
	b=FaGnT6DEJ6a//YA77tCfb2pacaXRupoGeClCw66Q7EZ//W3Cmt4tftTeiUxuk3/S
	CUwEp7HC4ThEvU+FucKs8HwZIAkqA8SIQuTicH97bsf9/oblLc35xgZOuhj0PM+BJ/1
	5AL2I8amMerDvEe3cj87q72IfXxCqU68eS6G6v+E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f3ff097d-9da52ac1-af64-4353-a0ac-af5c86bf98ca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bba813704a32723e35186f8a359a7ebef58c23a4539a7fc0e8c9663047942a43
Date: Tue, 24 May 2022 02:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653361019
