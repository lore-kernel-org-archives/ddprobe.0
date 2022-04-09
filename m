Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5973F7FA
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 08:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649494378;
	h=To:Subject:From:Message-Id:Date;
	bh=9nD9bt7wxMiRQcpNTMMskinYT8LVSLUrzyBf6MOo5uM=;
	b=PnRNhqBs18VMEncedb9Up0q88o0fmwtjsS575fNm0fQAX6lvVEVl93xMCHQd9SSL
	gF6Zv19cxWfsDZjWxd6njonC6QxUAr6On8cm0VbFnuN8i2bNFw2PoN29euJEEpLJuLg
	kKYTc9AHYb/IFginAPPGyx8MreAtg+7pxvG0Dl84=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649494378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9nD9bt7wxMiRQcpNTMMskinYT8LVSLUrzyBf6MOo5uM=;
	b=WQhIeZQnR2icYduWqdDj0jtRTjfqzOMVOa6CKS/oKVMaP9WfAN+RcpzHPYjbwemi
	BAhIoAUuqjwXPZzWwzdTmpk1Z0I0hkMvnLnNl6owPS2g3RvWyZTbhbtcwKrC1BypL84
	QGPJFCdABB2MxvL0eMeuap/eLePgV8sDSmV1HdZ0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800d86c72c-e4fab271-b9d5-4806-871f-6f4ac216a653-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1f1a06e97802cb9a791bd8950e156670515c31f2e0ea964734d85ea5b75f68f6
Date: Sat, 9 Apr 2022 08:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649494378
