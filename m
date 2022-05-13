Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAE2E2100
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 08:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652430059;
	h=To:Subject:From:Message-Id:Date;
	bh=KJNUYzEn7T5XZ9qyX91G14yjVa125I66WZeMOAKCPrc=;
	b=QLMiMF4CEvyUgACz0Y0ZSR90EiESijDuwFcNrHsUwa4ejMXNWTxzPFq7dUdKMeSm
	Dlnn8CkasIvAlODNpjRCRDcnYoC8amrmikUD1XLaZqp4Xy2gKLbUuWH5H4JfJep4ZHq
	FPBK01015Pd7/Lv2yH6kULrp9FqM9NEc/kM/Id9Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652430059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KJNUYzEn7T5XZ9qyX91G14yjVa125I66WZeMOAKCPrc=;
	b=b0J5gIFrGvhLUN4GYlbekp9S2eHvMj1LPks2aqdzn7ZjS5W8uExvi83gq5oAR6Vj
	j3DZAZKQ48dX265OO9jdFNv9lTIv1IGXDHSJgGdSKOGVKzNqI34w1flMSmT9p6e440B
	iVuhuNLtaPdtqkihRDgPY6FxROOitA52v+kM7YVo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bc81b6f1-f324cc9e-3a57-4a7c-9d4a-d76035842e32-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c035f31553810a6d0836e7d64fe5b2a9a68bc099fd4cb72c655104a11c430914
Date: Fri, 13 May 2022 08:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652430059
