Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A3FE7A
	for <ddprobe@lists.linux.dev>; Mon,  4 Apr 2022 22:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649111938;
	h=To:Subject:From:Message-Id:Date;
	bh=KjFFWXMvgBDLI8Y4id1chlpyDy9K0VQCpF7HZGrMNuc=;
	b=Hmw1+5p7OsUIgba9uhoch7HXpGxfWYYd2yPAjN7SmPvoOc34/FNRQ0+S8BfBxtKP
	dw87OI8PAXiWHgnv8vOXWKHAay03QpDtJqPluXcco/LSr5keyiPHG0aw00TuD49GF+M
	UPkcLMez7eH0DiWkY2Q7SRDOS07Bhp+kOml9omek=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649111938;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KjFFWXMvgBDLI8Y4id1chlpyDy9K0VQCpF7HZGrMNuc=;
	b=JBaCMCpilHY/gDNGKcVrAjYIkE0i4L31CjCPYQUCNuvL+3hjlXIUQB2fYBtC92Iv
	0nFS3vpbp9A3d6JSs4yQBYLVSx83e4jU6D+Qqgo7K0HQgAjrc6oB553j4/Z2Mavta1w
	EZMbcicOWVo7RO8PZfNJw5mNrCFt3VoavcZ2SOUA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff6bb34f7-6d4b4d6c-c8a5-4eb8-ba53-726fcaa0751a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b31666c68a71664889b97c7d11af47d68d0cbefae09d28b0bbf27a03f0c4942f
Date: Mon, 4 Apr 2022 22:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.04-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649111938
