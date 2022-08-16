Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7421C1383
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660613452;
	h=To:Subject:From:Message-Id:Date;
	bh=WZGA2m6/qD8oBTIwyyGRVXOv4y8jMHa0QWsmKnBR7po=;
	b=fhJLQu4dg5Vdwh0Vhsvhl+Np2Mlgn9ek926+wvmDLWdWF475E05AF7V+ix/j5fmL
	kraTQ5e4GI9HfBUQEpho5zABfQEP+0xf6tO//tJv2YY5Adj3ooAyML2aZH+3FSZHwQa
	FZkr6TYiI7dAhXRbmMF4TD3DOZX1Dp+sJMIlHYao=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660613452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WZGA2m6/qD8oBTIwyyGRVXOv4y8jMHa0QWsmKnBR7po=;
	b=UhhCqd3pGMYEr50Zhc/elp0l4AXiUpjGd/AYdR9tGCLibwoA5vjgCP0oLaIsVPvW
	Y3wBesel8A8uADv6Y4tq65w53e3W3J6Kn1PVHdD6qRpvVh8ABuMaxuT0tN3CduV5l2c
	FL5dyX47QiywWSIdDJ8tcAMjD9Ltr/vmtEzwb6Sc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a446632a-ea2d5829-9ad2-4dc9-a3a6-795f7211c916-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: def2ddca0c0af4ec5687424a40ca110e2250c88621cc28f1169a89ba4637b535
Date: Tue, 16 Aug 2022 01:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660613452
