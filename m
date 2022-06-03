Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 169C1A31
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 03:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654225439;
	h=To:Subject:From:Message-Id:Date;
	bh=Bf14MIrBO+AFkP8K6PZKcg8jQWmEKOKdoN2grFjdsFU=;
	b=Uq9nZxdT2W2K2KvJjwivkYiVmU0ssSLIS6cLyPthaUtSS1VoQ6Arh2OeO9DnvVcU
	NLd4jkTIwO7xfaXaiwzimq0CJM03eVG7DlxQfs8pg4YXEesfUnZb8lTxV0qsb8mJFdu
	o37Sn/SxMndimgXmS4V+SoHle8M/k28TmxRjq3N8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654225439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Bf14MIrBO+AFkP8K6PZKcg8jQWmEKOKdoN2grFjdsFU=;
	b=P+ifrDuPhqKg39onwFR/89ltQ71fptfBJRb0Cb61LIdKIN6InoS9dPHicNlMhRxM
	+gC3HQTFj6sBIsBlFOc76mHVz3Kw3vNC6QvgderJNRd8tj1xoeLNmkaFXaDiH+9qiJH
	0+y68/A2nG05/x0I+Hao2AT5Pfj3JUMVv80DB3+Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018127850a04-2cf81e54-ebbb-42e9-afb6-eb5e8119bdcc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 40c4d844f9639ee365571e39d4d0258004aaf7855f7fe413f41e488287c30130
Date: Fri, 3 Jun 2022 03:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654225439
