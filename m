Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 837B47A
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 02:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647742284;
	h=To:Subject:From:Message-Id:Date;
	bh=d3qdqmwEb8dSptYGN5yMgJwIE/UWBgKkcqShPAJUaOw=;
	b=JTq9Sv+f2FEH3nBlcy0q+4TndfzfhqgJperCtvgUzTkC1FUy2TGgvPuNyodzkwq1
	gTRKY2a8uSPwXSBzXrsf+cb2ip39WiTxxb2YkwM2wx3XQoL4mR4E4sjBAc6kBitZsIg
	5ObUqRQGPio2CldnwlkCHiQAci10NAWaxSe/idro=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647742284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=d3qdqmwEb8dSptYGN5yMgJwIE/UWBgKkcqShPAJUaOw=;
	b=dWl8p3rkyK94Zzzk2twZElNIXTIoJuxbNeqSnbVxvmd5aIRLRpawGow/KvVfR6yO
	wb12F1l5J8fNaDWuevGothGT656PAJc99FIt5r6l7h37TBk3CC+5/y4APPrhhduH5ck
	8Xho+CpooBnswd5dKOOYr2477wigtk0cvVb+Rkoc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa517f3fe-8a34d233-52d7-496b-b916-b9dfa522fabd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b898dda42659b49576686e9dee6ce550310b470b76de56adcb23515aab3b755a
Date: Sun, 20 Mar 2022 02:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647742284
