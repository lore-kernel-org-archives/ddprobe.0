Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9192F50
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 15:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654009319;
	h=To:Subject:From:Message-Id:Date;
	bh=XrMfwyVwg/Z8Gy6AhNQS+EzcN4W8N+PMpmq/QiZwE6s=;
	b=VcFKCXLLcbMVutGqm+sqO3ROAodODLW8Lroy183FxnwRJxu5iaG9rtLZ3udvr5oL
	LaqcUmoVojKc08TL7zZ1BhjcdSG3XqnlRR9fWOMT1MzhozSj11jIFAvcSdx+4V5oAY5
	sIffuLmWg+Cl/7dN9jcJdj8W7XWrX5p+RPnCzk2Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654009319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XrMfwyVwg/Z8Gy6AhNQS+EzcN4W8N+PMpmq/QiZwE6s=;
	b=c8mP5qUqsIlxZX2x7ArKgWjD+RqBvYj7bdmlF44s3jC4ezfkSyxP2mVZ5cvntEM+
	kzjYWOsMD7aU1FvIxTffbiqM4G+SnKoctqJtaiBl+Xf0Dieh3F/UHjjtEOdStqlUknZ
	YDBowvQ5X7PFXGlJmkSTzMrCecZWtLMJuIkhMYCE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811aa34fb0-dce73eba-a0b1-4829-adcf-b355954ffc25-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3837a02c5870564b8c91f25497902c620285375be2274e89417c1285c45471d5
Date: Tue, 31 May 2022 15:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654009319
