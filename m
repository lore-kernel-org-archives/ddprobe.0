Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF2D621
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 01:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651023418;
	h=To:Subject:From:Message-Id:Date;
	bh=SgVIrp5YgSiN0rjfwOsKhVaoAHn80YcUJWZk1AyJLuU=;
	b=lcWZFibhGMERXXNuO0vyLmLFQ2OS5c5S3L2iiP9Ep3nYY7YeCLgl2zYo7nSB8Rkn
	9VA8gtaARUWb9hgh4dAQV78bM9l7B+DOWfVypsovz9Nomi9puk1J6WNgA7ngbMqAXrY
	NXmwGe5VtKnbJuaeT5GKlYSx1jtwGqfvan31+Zt0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651023418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SgVIrp5YgSiN0rjfwOsKhVaoAHn80YcUJWZk1AyJLuU=;
	b=F0k6wxTCsES3+UgzCclnOB0L9TIeCa6Miwzw0osNEeha739WrNWRdeRVF6O6ASFL
	gBMM0Idx6Ch2SWeMyUcQl5zRch2OMhZucHdkxa3/u5vstJB1exg/N6T0T+Wg9zOjgJ8
	Wzh0TJdoBKqDOX4URL1zSE7+2J8WiS/mdpH+itCI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018068aa1435-e8278d44-368c-4865-bb58-f309a28b242e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9c3c72c71fba06f143043c7ba1fdf18393548ee37aff5cd6abc9946106245767
Date: Wed, 27 Apr 2022 01:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651023418
