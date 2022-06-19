Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAA727B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 21:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655675999;
	h=To:Subject:From:Message-Id:Date;
	bh=4aAyv3mYLa07i0aWnae1gq6DDYQ0ezZJNpCxu8htbBg=;
	b=KX+WEJWiwItOlnz35dy/WKw+qqDu4GMlTh4/xRTQZdDy1AvyyPSyMHFNfvnmIm3n
	m/CXBP17aNiufC43nhs4kc1FN/+U5yVf9MaLHiQTePeu4njN2aw1hIPrjXc1p5SvFnQ
	c0JYwMvkaBWsrwGTf4EE9O2L8Ts+w0ZOygfQZuLk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655675999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4aAyv3mYLa07i0aWnae1gq6DDYQ0ezZJNpCxu8htbBg=;
	b=ViXT3QUrn2RvcNZcw5LEKLaq3dIp/o/GlPOsjF9+kYB+5ySeSr+DSDYKiAsPrKhP
	aPml96dfGxbLARa87znU9sWnscRz2F3wNzJBTH1d2WTNUi8nObLNSxObM28Jo9a5FSR
	HvY+G3xCZw9LOY81msr08zv4If0Uedvb22yAiezU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817dfad418-eb36fa23-dcc3-4a33-a1d1-8e5a6dc3e03f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8acad46ad633d56410cac4001b5add71acb5a8b8edb8debe25473c39c96f8469
Date: Sun, 19 Jun 2022 21:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655675998
