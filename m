Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 109A1362
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 08:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654072079;
	h=To:Subject:From:Message-Id:Date;
	bh=FRhjoKKUyCSr/ltwvQqX25G2sgfG8uQKtl5uuZ3hOVw=;
	b=HeGhupyukr7Kcn0CXDgonI+qr82uenhuDVQ3tjy/VrzRsHnT02/X6ixjzh9b9g7d
	UfTICl/ZPOknGxGV8WdcT0d78ekeq7wcYYKz+vpiFP6ON7/J8Y8GLWImSUFmCh3kGRM
	ep2/r3Ei7HaXrO0Od0lhdG98q576YSmuGNikgoUc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654072079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FRhjoKKUyCSr/ltwvQqX25G2sgfG8uQKtl5uuZ3hOVw=;
	b=L1R2frPFOpYu2MKxDdufDBiDus2H+1a7pD+mRcoMRrNkWZIcBN+1wnL9sxsrt5fz
	hXZghS3oZtVMUX6K1HMqCfJvtncHd7p4xCetqS+/agbZUT+3mhf95huzZTnxhAnIg23
	2413u7O61cCPSi328OvWbwS1WS4oO7dbMzaawXTc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811e60f3d4-b6a92768-00cf-43b4-867e-f915458ab3ea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1585a123354a4052ba81ca4bf1b3b4edb77a809414eafcdeb451da56f91e4bd3
Date: Wed, 1 Jun 2022 08:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654072079
