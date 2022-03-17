Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D0137A
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 07:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647502884;
	h=To:Subject:From:Message-Id:Date;
	bh=EBzSkT/t31rVp2nj2pcaLzxOH1MmgQhP/LTzt7U+dyg=;
	b=Ium1P+nc7NZXRfmAJT3u1jbmrU2hfEGdwZxRaIk3fyyFF4+lNSXyGnr1foplMqLt
	YgzrWgKd9OzH+1B9b2ko08+9VnVqiharseali2eOCSbII0Zxdsy1AMj/PNRSq/zLWZC
	WXyTSxQJCmZyYm9aD42bexh5cpJ7DrPnEAsDutaw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647502884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EBzSkT/t31rVp2nj2pcaLzxOH1MmgQhP/LTzt7U+dyg=;
	b=My2ebSOzc5ihQZhk3VEhuNN2Gta1yQbAAWH63M4BIE/xd3au/C4hZXy14Tu//OHL
	pACyGzvlE+B9tIkSdciCb0RURfUdOkPupfVZ32nsqERF6Z3E0KIlwJAov96Fs33otqI
	py9eUhwkVwotMXLL7fu2MWsrUMAorosTVvj40Z9c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f96d2ff98-9eabe0fd-130b-4a71-83be-a1cf645d7f3b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7af80112a2ea92c3251537e38d5219642676ccb286eba0e25a253d6f74b463d6
Date: Thu, 17 Mar 2022 07:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647502884
