Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 141C27B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 04:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655525219;
	h=To:Subject:From:Message-Id:Date;
	bh=nY3vW8UAs/QM73xSbEkIgSqs+o4bGFcqHwkRAoROijM=;
	b=OLgqI0N7g8grYQx3RpdIQ6x71YypX79uN85xRbHXNsbiYFseK6JeWk5lEYxnLr49
	izkMjInaAdLtwCkprgfwY7TjbxKA8ZhdF8FN9LFyRsUhm8kKKLmeVD36WHDVTDJUhCO
	KixfbDiRKdjIXpc5p2HXHJ69Hd92PJYIw52Qp23Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655525219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nY3vW8UAs/QM73xSbEkIgSqs+o4bGFcqHwkRAoROijM=;
	b=OBe0Y1OyWy+wr3LRUVeSQ2NS67DhPIarM68MPeflT/dnxBMHlUI6LB9xOasW48Jm
	aJFQ/qkOSFGp50rfwQJlbcUZLara97vSTubDCS84xxzYPsyZwIAmXDUtqn65KFjTb6z
	tOutPIneQ6pPB7Ens6AmT84pC95A5bjpOpuBfcqQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018174fe1bc1-c6b79136-63cc-42ce-a9ea-5510845fb6f1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dfe0b468716e9561be9ff3957f85c6da2f7530889899d5f2844d0c2c14b177b7
Date: Sat, 18 Jun 2022 04:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655525219
