Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B87117C1
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 04:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653884519;
	h=To:Subject:From:Message-Id:Date;
	bh=cdCCUfqWOkXvp0iAdjnxGPabzDYk/agmInSD9denzHE=;
	b=C1FL10xU47M5PGb5Oh/Az8LAZbovmCc25yjsR1JEFmPQJMgPjH5Z5E2uCBpWFHXA
	mIObzxtNF5GbhaYeLptMSrbPhMcxqlhQtzdDcOYw9J6Uw0MYRdefbnxW99dqnMV1Gnl
	afNZ/tGGNRDJ597clts0Spr2xjrQak4ElR46srng=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653884519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cdCCUfqWOkXvp0iAdjnxGPabzDYk/agmInSD9denzHE=;
	b=b2/N8vxRYyw2DSkrL3r2Izn0xIC9eJSW7RYksWx9WGVnWDAQPn5TRc+ueKeKsylE
	LJILFSYhU33A8oChsvLp14wI6GIKt8kTu9g6OWpTte0f2YHFWpPh3Kui8zGe8acIuaJ
	5X7wO7J+YewkBF+ruB0TJUrHMbP1y8Og7l+7QNj0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811333039b-f510d5fa-9711-48ea-882e-528d045a6c61-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7434b145ee5e9d1fed9a13555915c3dc4f37c5cc20286089e072966c2d75a464
Date: Mon, 30 May 2022 04:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653884519
