Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65E967A
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659854452;
	h=To:Subject:From:Message-Id:Date;
	bh=h7DHZJkBawWOti3DdTmr+TIJt370Yggohr9cV/TzCBg=;
	b=bg6k9IDEUn/9fDq3LxMBL/mpVxgk+t4yydnI826/xVPhpxJAEfiAka9OjNZhUXPF
	oiQeVULiNHVFcV4hWe5pTQKRY0qKp51hpikeRzNRvXyqjZA0Oegu7sC81UcHdqeOkkY
	2gxce9uKOsW/Q5LJuXJ4yQbffDjkBl3/MFPda330=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659854452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=h7DHZJkBawWOti3DdTmr+TIJt370Yggohr9cV/TzCBg=;
	b=IZR05hoGknHHPoM2+GSHHQ0NL1SAzk1gFvqQfrVy8LAzbMxDJc86vGMZaM1tU6gm
	yidMc2zlGGTYHQkvrDM4xWXe2K5XoNGcN/B0Wt1SAuhIxnd7J6ycNIihW/m7JVvnIrg
	YrFGsOoaFXcyBd/b7To43s+wOHeuftWIWXyZCaiA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827708f7a6-44034644-f053-4d1b-98b1-7f2378843afc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 870927b3064d6bc0841738dc3b757b5a0653e13d46e4f1b5d94076d237907d0c
Date: Sun, 7 Aug 2022 06:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659854452
