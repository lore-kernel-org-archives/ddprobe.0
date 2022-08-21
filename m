Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F62371
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661066452;
	h=To:Subject:From:Message-Id:Date;
	bh=ezjfL19wCtZfw7yrWQD1/LvlaTs9SdeZn6G5sFpOcGg=;
	b=SXAKb5MCBBTiDA+wiraN69BPSG/2MlLKy7mw7nuDFQZ18d4TA6gpw+u+rNRKBs+w
	rS0RaT6PmFPLca3k/X0TlHNn7MoiPskbFpic4FpUczpRDBRE9gd+Uqx6zvq1gKxOD23
	X6cBrqrTdoQlPJ24UyR4bhAVvRdQLTLYSIdaDIrc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661066452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ezjfL19wCtZfw7yrWQD1/LvlaTs9SdeZn6G5sFpOcGg=;
	b=Q/z3YhSlBi8JUIMjXelIVbtQKaKmtYNgwaZWWmWc0Lobi/d/7JoLkENJ/iqxOFMK
	/NJtpTuOv5qG1QexbzwtYx8aIeuWNrA/q1WO90rA7YwCNKUhRRFVdbMAPZgu1LkDUIJ
	JGuXFV+OuacTVROP9PJYWam3BbT65XcEWA/YZRpM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bf469e4d-5dcc3168-0ceb-4e05-8427-c1e27e455cc4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 348278c3f03a478ca8193a0503dbf9d8a19c7d5befb7a1bbd7d73a80134e9c3a
Date: Sun, 21 Aug 2022 07:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661066452
