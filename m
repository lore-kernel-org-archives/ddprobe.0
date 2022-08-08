Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79C7F3C3E
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659973252;
	h=To:Subject:From:Message-Id:Date;
	bh=lirYS+tkp8zG7FfWxzcDBes2o7tiRI7JS51V+jD8dEo=;
	b=SAugQ615ib204zkIMhi/4THYMr1Uq8CqdKQfB1qf+meYxi0rHulD2PI62GH590Iv
	mi3My2BjAnPnKuz+xe85r5/auU58pCN38Z0zbd25ZH/xX1LBaQ7yofSeiOs/9R4DVEm
	IU1XaIaZbaX3cfWVwIjVEzCsJjCs5iLnHHzJTyMc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659973252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lirYS+tkp8zG7FfWxzcDBes2o7tiRI7JS51V+jD8dEo=;
	b=LSSgMKtlq0eq943EXKnXbQiBRNm5EegmCm/Bw5uO/69IwvdvbpNYKcorv2yk3SpJ
	Q/VO/Rfqp2CRizTCN33NdNvYs598W+lSQKPkZSRc45qNBMwGzdeFD+Jym/AT982tUbV
	Nc8yQWk4UW80VqvAt4dljPikeIeTne/d98wpen7I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827e1db60e-eb53127c-1b4c-43d9-a504-201fcfb4643c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 86c4c345510daad6a6e70f62b7c6e5841a34ce680eafaf1d86120048582e1583
Date: Mon, 8 Aug 2022 15:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659973252
