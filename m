Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3D087C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 04:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654833959;
	h=To:Subject:From:Message-Id:Date;
	bh=ZsBrkJgsmCZQSo5Z1rPmXZ1f1IVKL2O7rNSVDart72Q=;
	b=lhh4XZ+2ZXMJoTDi1Ti8AsQ/LRAX/Y3NNd3l1F1gcYgCfAhjjbTI3ZhuUAyqgx1t
	UiZGalXK1DAD3gHmMBsG5cSvtq7QAHYI1ihwGVOTOk2J4oMMfXBWi8Zt+3oiB1ZkwEz
	K21I6Wsb3Sca+DuE97V9qpC5WasBazz2Fa1V+LeY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654833959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZsBrkJgsmCZQSo5Z1rPmXZ1f1IVKL2O7rNSVDart72Q=;
	b=ksgnjpQyBShvG+j6ZbnvlBOgkAf6wcUWrjlgzosk/Gwse+rmoBvfs2bC+BnjsVA3
	s01suofGyFAm9JGhCwfeGi2tRpKyAN6+yOp3W2lt1Cu5n/lByOJ5Sn/5ljeWYRJIXVv
	LT5QLv4Mz7cHNZaAfwMWe/i3TQjlMeWg5q2DSRfM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814bca5142-bc511e65-ff3f-4d7e-accf-1259c3c6c020-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dcff550342868bf03ec1a819df07ad63e7263df4ea1609d78ff2fa32a295683f
Date: Fri, 10 Jun 2022 04:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654833959
