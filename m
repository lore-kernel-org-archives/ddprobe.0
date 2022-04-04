Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF007C
	for <ddprobe@lists.linux.dev>; Mon,  4 Apr 2022 03:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649042698;
	h=To:Subject:From:Message-Id:Date;
	bh=c487QqM0bJ0Ayf7fuGTbpBT10xqpuqhzd0MfiDIU3N0=;
	b=P3C2lvUPXUFN1zdZxL8GNl+Ykfae75ubiFKEwUE2Gd9YC9Cu7GDPqr2xSjZ+o3Gr
	IjZiC55pXQDRBwQpcIrPHVeoWUY2GEien4+eKSz0zhbWhy9wDPJc51VdArWKLWlVCbr
	d8ciu6iUxRBlfXNDcP8v3EZES4BFkLsziAGlx5Ck=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649042698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c487QqM0bJ0Ayf7fuGTbpBT10xqpuqhzd0MfiDIU3N0=;
	b=gqztH0VexD+5XBFZNqGJjD3I4JKNwoOsWMlt4rsIXYlXjMwe03jJs/geJx9LU8PX
	G/oT7C30yDVoatvVLitqTAKLPy7RiaUs6oBRq9DoUH7jiVXdqoxoSRhhuQz3Tgng3Kw
	hctpn2pfkrwt0bDYsFGwxI56lHZCNmpN/A+S/x1Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff29ab089-7d221bcb-f128-4c6d-b36f-4d8d952af670-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 47a4ed4ee90c8febe4a3b2686e2159f4117be5185ff4722de48ba88e42fa6ee4
Date: Mon, 4 Apr 2022 03:24:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649042698
