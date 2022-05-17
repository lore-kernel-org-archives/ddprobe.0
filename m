Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C681103
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 04:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652763179;
	h=To:Subject:From:Message-Id:Date;
	bh=rlXOMXle4h77HmIkWjyoc2RhnKu+ioNlJ7GM966ZDTk=;
	b=C1Zh60Ji9CRJgbl0aiE2NTCwGlHVndSEzFUsSprvdmqdJ0oAUzmD+MaQWZGLZH6l
	VdGXLCeilmXZD3CDBYXagdpe3v0E883npQZVR9JHPSRKJ+KQhy2oRwRUBq0ncGYnqjC
	7INTNTghQRRUN2iTkCLLsHhf8+Y05AUwBSE2Kcoc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652763179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rlXOMXle4h77HmIkWjyoc2RhnKu+ioNlJ7GM966ZDTk=;
	b=EJL9kR4z41hNXwsCKRaP/L9Fi3cLzuhydX6WTOHaKbnV+Lm/Erw5kQI0UarW+skN
	3pxeUEHK7qO7OBKJ2BfMpLMsbYCVLmbLOcUj6Pte96QmpMlq7bEZh6lcv8D/uOqSABv
	YjL5cQLkH7TuQv+FY2toyvPVcQ8//DWzQwmnWCbE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d05cb975-448ecffa-b0ea-4a73-9ea4-c899e6e6211c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7136e88695d6c509ede25263a56a9743a9515ef0fcccc126c77ef94388da3eba
Date: Tue, 17 May 2022 04:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652763179
