Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D15210F3
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 04:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656648412;
	h=To:Subject:From:Message-Id:Date;
	bh=AI2agTeC0hY4QtPPLcDZi4OrSbT7IEDqftyNtOdWrLM=;
	b=JV/9HzJzxamZ1svYYZR5fesKl6DM4JDz3P0lJq/Rc2W49EM73eKc97i9YfPFa5rD
	6O2bJT3vxxE5sXSCDq0t95qzHd4mdFoZjV5KdkObzZNrHpBl2En+8RYy1nJr3CdjDx4
	KjWu+VXm/LfVoJlMJIPpfOo+iE3UY/1ttUlDKXeQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656648412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AI2agTeC0hY4QtPPLcDZi4OrSbT7IEDqftyNtOdWrLM=;
	b=ajEdC59sUVsQ9MGgInyQEsGTy2YQCMunL5AQrZF1otTsW4mDvO0coqZDPRbloZoX
	QSFAJTVHmp+HtpxGZTLNQx59nNbQfC5Y5TuRFjV4WI7JWWSYcwtzube+EtitZOMP+Zn
	XqluanVG6+7r6fhFcm2KgMx5xqiAnc5Db3Z5j9ho=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b7f0ac99-9d01d6b4-39eb-49ac-8ac3-5b18231d5a89-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a2b27716c1cdb0d25489ca110fec5bcd9efc0744ccd5bc6d5a0dd95bbcf2fa77
Date: Fri, 1 Jul 2022 04:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656648412
