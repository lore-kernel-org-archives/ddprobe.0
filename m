Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6F4162B
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 10:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652523719;
	h=To:Subject:From:Message-Id:Date;
	bh=Oo2V9O7e5X/uVnceFNPaoLIHB9epYplTQR50JtgQSZQ=;
	b=dgsSqZ2sjNTF26ltvo1CO9DIpOTOFnsPbHpu8xWY6D/8GsTP/xJGlh7uF6eqhGSd
	MClDTPuvUJ1cMuATc91FJ0DlwwVUBMv/4qC6YBbcNjhyfm3ignv2i1MiCLDA7cnxQxJ
	GA7cutuGjegp5K9gmZaSLUsi8JOdnrx/Yym05tRA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652523719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Oo2V9O7e5X/uVnceFNPaoLIHB9epYplTQR50JtgQSZQ=;
	b=jhyUtV/imlViwbMClD2V5OZUjjntBwOQOK5woLTaQide/hhTzm2ZhLd0SaZfDkIm
	b3wEkany9Fhd+Ld50YWQwjeztzOGd5oE9m/+QiGXZro9VSbmkQHUD8lJmS5/gSCqeY9
	m0ihHGKz+LXOOHX2k2mHdftt7XvRXisRMp7njNmQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c216da62-4f06b335-b412-4589-9b82-067a8cd4d804-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 92473ef5a1516f2748a70b04d761a5d0fb1d7793533304eccafc59b1bc7917f1
Date: Sat, 14 May 2022 10:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652523719
