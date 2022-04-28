Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0036C7B
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 05:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651125298;
	h=To:Subject:From:Message-Id:Date;
	bh=swntmX4NNFqnHEGkBt8nXWYcGea9f6md9MDS+1J9Cgo=;
	b=KSvNUdbI8SL2WnYRaweVMhyjrmt828eHyhQU/JcG83HQR8cjtUNfPCB9eSzohGCd
	hdFscwtHAt/TD74MTecYzoyMi4zMjeOVlUo7dY0WyAHIIy2euqxNBmDRHFeNwvEPvdC
	AQv8EsEl3YXU9fQv5RkU9ZW8ZDGOQvLvbqT4K/3c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651125298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=swntmX4NNFqnHEGkBt8nXWYcGea9f6md9MDS+1J9Cgo=;
	b=gkSwO64Nb2FOT6dqMJPdE7pFmIV9wQo61PosArw2955FKdOMmtnJCSv2gbcuPtPw
	+OLXw5at1NcLuqRnHszmzH45h/cMQazaTNBtH/G8vOerHic+P1QI0Z5ZEZknNZOuNIY
	foJijrsvX3va/0gB+Tm5/+YHT2Uo9dd9Y670iMyc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806ebca450-9d4b2f98-0168-4389-9afd-6c77146c616a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a9b5f54373e69789b09ebc55f8b85e48ed2465144db87562170086526d4c7711
Date: Thu, 28 Apr 2022 05:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651125298
