Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27DE0A3C
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659685852;
	h=To:Subject:From:Message-Id:Date;
	bh=89coMcz+lzznJcxBaxciL4QASk5WzAfO0NB5b3vWubg=;
	b=boXhL+CMlLZi+RjcXjMIv+MntnSov7u9E19u6ehyOWS+uxsgAlK1A2n2cTObekeQ
	Zcq42O7O0AyKKvWDGA+nq/YAZWktwT2xICWVGiP3/1kjjAe2nfl/p4/Q0Tiizbjev1r
	qOFCRXiIFsdlrNxrAiLuTOYvkxcX4+BSbf2ZVLG4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659685852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=89coMcz+lzznJcxBaxciL4QASk5WzAfO0NB5b3vWubg=;
	b=QbDt9lmtIxFrinvBrWSiWMvXfHb+ziUecF30DrFvjBm3gcwvIlV349KTwfbv/ncA
	zuVB7DzlqLDNFkz1NOjGpcvoEnv515p8VTEW/g0KyQaaTtHKWi/OhiMAcf8wlbKFUsH
	JuZXIJMVYi/nhmD4TIk8Pz3PwgDaZCzPfX8u7dt4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826cfc55d4-2aae61d0-3b0b-4482-837b-a22ed0907545-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7eaf609b6e495f622c92f1ef73dd60a46e2c556ec330f0406513ad0812bff1c4
Date: Fri, 5 Aug 2022 07:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659685852
