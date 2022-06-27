Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139262CA2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 13:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656337012;
	h=To:Subject:From:Message-Id:Date;
	bh=EpUvExK664Al4AMPNCsHrU7BSUClrV6009ZhCA4Oj2M=;
	b=CvwmfenbFYAvbHCj3CaRZHv1GbR3Qd2Rmz/shKZdwkXs27hSITikSqwxhgNbVbOg
	bF+lVYO9cjysTF1eMdjFWB4qEOqDlaR1URf2z2A3uqYvYDgMyy5NNjHEUeiwhuoCzJ3
	r9oln7QSofO4e8gx4UEvu83sMS6X+Q50lReDydAQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656337012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EpUvExK664Al4AMPNCsHrU7BSUClrV6009ZhCA4Oj2M=;
	b=Ae2xyC4+YEJ7sboGXTRKr5rQqRkC/R49ueGiE9eQCG4Dl/Fpa6LmK3c0KOCzDuqr
	jlYYXNe2rgtEoUDekFoIEvzJyApD4auzDzPaU3IrZOYpa6wlBJtVaAX+Y0yyf03QKOh
	tG3yWOvMq6Ne8mO2rSSCTEs/3jftphlbaB28Xm60=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a5611639-385db757-2b5b-4b71-874f-e9d512ee59a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ba340293dd18818d45ba56248e6b1608b132084653655fb9881cdc30f66836da
Date: Mon, 27 Jun 2022 13:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656337012
