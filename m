Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70DCC17D2
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660180252;
	h=To:Subject:From:Message-Id:Date;
	bh=UKDyLaUgy+ZUEV0uqm7G3Z/kt4tgRhRskQWQc2QMlbg=;
	b=PeULsoPdPm2U2Jy/TYZNltHHnusJ0/g7LOK9LvNxJyO2FfvPBwWThLi+0K1wj1D3
	iQQtU0IcEJIrfsi739QThiatqqcjgIlq55Y4Ib1i2DIsrd4UNlpLf+Zq7RuQjot+8NX
	OVt7fpC/Jgra3VyPucyOmKZ7Ry4L19jDPgLCpfq8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660180252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UKDyLaUgy+ZUEV0uqm7G3Z/kt4tgRhRskQWQc2QMlbg=;
	b=c9Fxz0iFM7CWVX/sEJ01WVKDs3Uy53HfI5G+ktDXjhxgMcluW0ksjm87RxaTwqXd
	eazy9mC3asivU849MxKMYkyJ5jE5VPTJPrgvc56vCb2zs/bbg/6S9pPVzn9VLT1NNUn
	WU6qSB+gHRc1SA/Ljsr9NsvP81uiVd9dIoNdmN4g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828a744782-57fca2e3-e1e1-44eb-bf65-ef62b3d9c150-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9a300cda03e796bcba89fa345976199c5046631d2fb43867f0f270a69abff1af
Date: Thu, 11 Aug 2022 01:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660180252
