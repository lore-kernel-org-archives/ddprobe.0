Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38CCB610C
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 23:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660951852;
	h=To:Subject:From:Message-Id:Date;
	bh=WPBHtbZbEUKw3CtpIJ5NVd482y18Ykfs4YPOB+HuZhc=;
	b=B2yoLd2Fy6UzGVrNjtD/2Dx250YDFSEH1h/rFNArioXqhV0GM4w2Lqws8l0T+gjo
	iFwmvlf3o/ts93ltMWbC5cfBC7tfzhtELIq5+wQ7TuI1aaLziGL4rJsBrAPAF5eSN+e
	/DvuzJuJlmdJrP0amSD5qKC/FcZBEQPqc3xcbKsc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660951852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WPBHtbZbEUKw3CtpIJ5NVd482y18Ykfs4YPOB+HuZhc=;
	b=FItgwTKKOOpT+6lwDAdj+cBU9kesBu1v7dfAH/dIvwpPbodZvhonjYOFDRkQ2BC2
	UupnRSbOCyv/CGBiIO9UklBd/VnAXD8qv/Pyos/2HXusl6bnPQo4SgSWkca7xmBIpof
	0Kjsl0wN84TgTOaaAUHrZrA8Rlwm+krO7jz22Pf0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b871f5f2-023981f4-837f-4f26-8479-34d8d90206a0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1efb8c27bff2585b246baf44ff80c6859dd5032fe2618e49a3e7acd47f6e171b
Date: Fri, 19 Aug 2022 23:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660951852
