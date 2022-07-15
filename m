Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B0ED6669
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 06:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657865812;
	h=To:Subject:From:Message-Id:Date;
	bh=F+Bc/T4TTL8zRQ8OVKoGloyjGifsMtysn5M5mGHoOHI=;
	b=GmqllH0grAh9+B+JcoS8HD/CcK8c22wRYnz0xGd1bSTd4Acj/6LwYyL9o7zgLUem
	etTVXYUkO7fQS2pOVj7uLa0HLC8hnOwJU5NwN+2TJM9Gl1YccncIZoFsX9PkxavbVLF
	2hOUoXJ4XOpQRuujsJeG4JkP87L8O4qppeDOvN3Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657865812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F+Bc/T4TTL8zRQ8OVKoGloyjGifsMtysn5M5mGHoOHI=;
	b=fMJfEkKpKyJkyWBBoDyx5x659DM59RPRz3FNN6VV2t13i64urrJO9vhxZp8XtAir
	WNEsZeDUnpbdttx7KItZgEOlLF3wOVcEqA5j9ZdAkS5SgsZbWbfj37DD+Qy3L8JYwNp
	A0tadGZ+3RzRUJQTrvuJ57D97oq1colREF+paFtE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820080b9ac-a3cbdff1-34e4-43b5-a8ba-9053d9081776-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 20ec2d3272916c511d2aa5712ac8b63f75c5006b55a61837e2c83e1eaa51d4f7
Date: Fri, 15 Jul 2022 06:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657865812
