Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BCFC17C4
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659262252;
	h=To:Subject:From:Message-Id:Date;
	bh=K703kISVhU/xjYBOhZ3TgJuG+3UsN1+pExi3xI653Jw=;
	b=R/K+jqqIuLlRzoDhANiy5V00zBerOIu4kEZNS0DSghRvIjfsqDKuUVpMimN5+YUI
	AfNAWnB7OuKKpMvXNAmGi/kiTp2r2h6bHNGYqpoxnrDd61G27D5HxTybTMDBYU9MAmC
	bXfMAEwbQr8RV522Ai9QCZh+xaIcpLa1iomTH2LE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659262252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K703kISVhU/xjYBOhZ3TgJuG+3UsN1+pExi3xI653Jw=;
	b=CdM6pxFnPy7XUB9aH39J6sLl/IfLFaD/+LrtBQAkMFvs5DqajYiS+cwkZXDaWacq
	luNF6CWa+0yZaX7bTSRd54p6FbNpgCZhenQvHX1nfRMZTBuOmYPPvRsAkhQROCbg3aQ
	taFwbcGGVqWqccftyDkbUTvUXwJdPUMwkXIRaw4I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018253bcb5e5-df0eb2c1-ae95-443d-ac56-efcb32dc89ed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8d353cfe80f069498e12e9f6644842aa3188a8b266cb81c7c6b5b72fba3b5f08
Date: Sun, 31 Jul 2022 10:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659262252
