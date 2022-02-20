Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292215EA4
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 18:26:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645381585;
	h=To:Subject:From:Message-Id:Date;
	bh=WgFWxo3ScOb7MmSCbAavct53JUaaPrZoiTFC8t0i+5A=;
	b=T7Mt5N6yKho+1rW/Fx+XZhCSV5OTYJVei8eW2h4dMVecJkdu5BUk9VTr9I++sZWZ
	OCy3b6aFD6GIC6vATn6Cmgx1HevOV18o1ENklhnPZs22JF9SxnSpMKpPDl9+NsJ1R1I
	hk3cPZni0WeHr/y+0Yr+V1slij6vub3qy/U88Qb4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645381585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WgFWxo3ScOb7MmSCbAavct53JUaaPrZoiTFC8t0i+5A=;
	b=YcK/ohDajzrROaqnQ+o0Lau2aS33A276jo6tNA81I/r5KmpmL8gpWviMx5MeRxWu
	0pjSaGcumcchqhOek8M/REsF6mkCL9EH48usXW3RVGUJLUvIQVJjN8wCISPjGYDC6j4
	6opCTjMEjsPMzpszQr1KHeHOGStrOMx8DPdmYbjY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f186287c4-ab7426cc-1648-4cab-b3b5-f9cf62b7f9ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ff3616d0dd6fbcdbb538b8ea345ba7585f736f59f0ae1ee7246f613304c429d6
Date: Sun, 20 Feb 2022 18:26:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645381584
