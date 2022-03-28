Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E7417E7
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 22:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648507978;
	h=To:Subject:From:Message-Id:Date;
	bh=Tb6shYWtRiyN4FMTcFcDsqhk85W4Ltc1Z5eF+443UyM=;
	b=fj1lMnIPQXT5Q67W19vtOlS66h4j5ijbUENGNfEdkNUIQAmviy9MY668T0XQ+Njk
	oeaPE+056MjfbFRVIWUz0MetT+YrzYf7JOYRqigIQi5jo4Ot+iIxvc4IVshB83yPUB1
	CCVZ2iQ8Yp4zpq+LbmkCyNeNt7NYlPzMxMgKtjjc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648507978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Tb6shYWtRiyN4FMTcFcDsqhk85W4Ltc1Z5eF+443UyM=;
	b=FqkIxPjAlVswVirqvDl+o+qPRIEkrNDOxL49K66IX7jbiMFlHpSI9MHwstmD93Sg
	fMEH+pV6K8R6Dt8yjk724r1SpydfuoO/ruPJaaX5FFtcpKHEgtFvWMBRaWy0qVovgEP
	nYmda3L0rwtiCSv6f+vfEGZSMo0Hnh58XKYjUljA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd2bb8248-8a4d8636-b1db-472d-a170-55af4306f912-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a07bcb388f3ff8a8bcf20daec76cc03fb0bd468fb79ee31ea3edf6eec7cfdeb1
Date: Mon, 28 Mar 2022 22:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648507978
