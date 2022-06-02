Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13F7729B4
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 18:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654193279;
	h=To:Subject:From:Message-Id:Date;
	bh=VyVgoS0FmZ6Cup44kJB1ilbDlwjq+IHvVJ00WesmLeI=;
	b=RJDhSEDjzCshViz9jVbPIt9/kLuGKcPkNNCoRXhCJjHeBoLeOUaTLaAm7uNCZYnL
	HWHwiizEIfPka2hfIvwqqj14KyRDVZjxQbGioP2fP+QfIibPYgeXHbi6zl0UdcPQ6p1
	72MgUtXW22FX6FEpr9q5xWZKoNG/O370/6Wr95w0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654193279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VyVgoS0FmZ6Cup44kJB1ilbDlwjq+IHvVJ00WesmLeI=;
	b=AT+mDf4NOgCkqrrfMMFuFDoMQkJoDKuPGwuzAPO2D0ULglZVK7jLfbyr8zAuUG6F
	ROBk1QxyGl4q5Rv4xPZo6Za3c6vSL3DPBj+LgjpYVmCguBFgysfQG+kf5N0NAYyVgPa
	DcyRRlb2MYn7iYDEAK0rgQYYdvS+nPNsUnQJPipE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181259a515b-f10e6d3c-ea7c-4a31-9b47-3b2b843ab11c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9d8c17fe1841bfc51cac1868ab95694ec5cc8cc3d77d7dd3023aaccf45aa03c3
Date: Thu, 2 Jun 2022 18:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654193279
