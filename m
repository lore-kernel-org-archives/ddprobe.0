Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8613B6144
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 21:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647896784;
	h=To:Subject:From:Message-Id:Date;
	bh=u/439T8foO5S7hrhHF/zD5o4J/edwt7wN2MD8ZRza9U=;
	b=P/bEMzyQOBRqNlFMhCfoj9weYX6T9jbJH9ekC4SiVcyJ8F/xo6dr3kMd0mI2+DYr
	Xjk/Jf3P2COO/BmtqyuPbbscX1DosOqDt/aVREi3xQkCe2ze1GmN+h8BbS0X4yrmKKJ
	iJFl6UfI1KF9dF8R0sPv6pMElEoC0HOKFjVc+jek=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647896784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u/439T8foO5S7hrhHF/zD5o4J/edwt7wN2MD8ZRza9U=;
	b=Ao5vPgcCnAaUgQj1gfNQqYZTp3fdlfyQP/r25x/yNs7ldktzL68DOsRuapk5HT8D
	x4jUTVkCB3/REhhjfjoiFJs2vzZ66qpSyKXgqhP/Jt/Iil9nj4e3+INYvn6bROMAUuJ
	wHD78GBUDtWhPtUKIMf0Xl8ltX62T1h+ezJF7EhQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fae4d6f69-04d3a633-b460-4fc1-98ed-868ee50eb7e1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 506db0d4124cffc1b02a548f23f452a21a817adae9354571f77c4412731e866f
Date: Mon, 21 Mar 2022 21:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647896784
