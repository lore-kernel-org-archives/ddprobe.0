Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51EA92F4B
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 22:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650233578;
	h=To:Subject:From:Message-Id:Date;
	bh=cBkum8swUC3nXMQS83NgU/FXJWyYymrlFfDvWM2Npd0=;
	b=YpaTJGjs1TIGD1p+PRr8aOaLSv+mgNxX3n/bFsIPMnv3C9OJYz6dRSjV4rLyicl6
	E+YlxATOqAa9YDfZwecGO3cIXmUCh9FR9vWs2VBBjDTS7MTWN2z8hIkTr64X9rxkqqj
	a6BJEDl8MoPBFihaVtvE41IMkDAZyhn+uwySq5jM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650233578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cBkum8swUC3nXMQS83NgU/FXJWyYymrlFfDvWM2Npd0=;
	b=kqJ68ruGPrO8PVPJupY8uMyCKGeEP2rz3+bRVKxr09c8B8fayiorQFVuQ5cTOy8J
	q3tSgExJJR5oBhZj9HyqVn7Ixtu1nhshP9QKItybxgj/y00/xaQ0/Ie+VcerHdNKwkA
	NGjGU8oy6p51J8g4n9idzXunQAcKx0ymLFM942B4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018039961323-244a7d7b-1017-4f07-8a81-dc5eedd40e4c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab99c63ce7dbcebfa4748bee31d3acffb57458a17ad1adc04e920d8456846920
Date: Sun, 17 Apr 2022 22:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650233578
