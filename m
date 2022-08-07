Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D4423C15
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 18:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659896452;
	h=To:Subject:From:Message-Id:Date;
	bh=aQA5vJM9bNsVJin83hY1yI6v2OHkXeVF01592xgbW+o=;
	b=X98MoiWyUE0IyPFdZkKvCFwAcOg57080/HxAwjprhdqbpXtzWeaFC7sM4TD1VGJG
	VP2ibZlp1NNVn2ROxBb0aUWO3a7Zbgvtpanu6AiGslQSzPfVjAu/JXrzCbSdDOhW3+k
	uNGpDNFiscGNSsKbxeAxzr4x+caN40oEOuEo/5+4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659896452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aQA5vJM9bNsVJin83hY1yI6v2OHkXeVF01592xgbW+o=;
	b=CO3dq1gbOq6+2U/99jL2lgDpngi0UUTsRBQY7xtlyUL3NqyJFal+CnZMum7rm8Kk
	X9/g3BSrBzv38+dua8d4z63YCUMrksjDjs/9HW7zLv1n2hn2zPJVnhNgZ1sI9G9eacn
	nGLQMYi83murF2081IYmFDtFaO0pdhzkhXoYuocg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827989d5af-874514e2-5cc2-4b21-8c4f-21274f63ba26-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7123168cd03c4a7e39dec3d72b4b24c31c70d3ad741894438445bb32c604bda2
Date: Sun, 7 Aug 2022 18:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659896452
