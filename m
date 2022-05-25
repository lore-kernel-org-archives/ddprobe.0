Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D12EEA8
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 10:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653472979;
	h=To:Subject:From:Message-Id:Date;
	bh=nQbEORduQT2ig6ZpeCU+XsqogzQ1LEdIOM+mpntTZEg=;
	b=WbnroyjSboGp7W6xEciArnzytlrLDUIPG8/Jt3XbQElZ5KYLPBw/W5iDoifs5Fpr
	Cf1XWkNxnKQch3c9SeUoOQk5sWelFP1m/LckjrJhRsXhfRKMrXXpmGzU7QT666xVzac
	u8XCf7tQAVAMUtzzpaLDDtGleMfQWSv1Wrdu5P20=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653472979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nQbEORduQT2ig6ZpeCU+XsqogzQ1LEdIOM+mpntTZEg=;
	b=BLUnwRu/R1X49lD349P08/tHqIJdeEp/eKpnAAVOJIOyfoeQR8QCkl7Ppv02/+1L
	EZOdeebGNAN/EJabIqIQTVNq8CkIqfgN5qlitGrdQWn+9ySopOsT5xt8ArNaT6BYZmb
	+67TUrCb7ESWdRY1Et7xVXlZ6l+11whiwv23FTJU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180faab6948-55681776-22e3-452b-a10d-68e8c2cc4f15-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c1872c0ba217c02aa547851f1097e118a3677adc99acbc849956385433467629
Date: Wed, 25 May 2022 10:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653472979
