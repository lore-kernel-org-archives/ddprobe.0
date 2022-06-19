Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E0487B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 14:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655650439;
	h=To:Subject:From:Message-Id:Date;
	bh=vu/1UDdF7/1/9Te0UOpGkAIc3VLBFQGwOeyLgR2duS8=;
	b=iPZeG1/R8wISYz3fu03ON328duS46hML57713pZqtReN83nvABwCX12MW3EUfUPh
	W5PFGgrbp2DjaCseRtbJ3+dO117mMSViUaVFzaLK3lj+YFbqxHGu8LCTn2r+YoXE8Lf
	M6PZRem73aISMycyxkmsbVTNz4pJwPuxey/xTCqA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655650439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vu/1UDdF7/1/9Te0UOpGkAIc3VLBFQGwOeyLgR2duS8=;
	b=Zvm6b6vwpLWBXji+ytqBh39yJ7MyrAGzRf0BCDrrxN+ylVTPcrYDDqsO7kROrgfs
	wrKR3Q2GTZQMVP51vY9TdyXBN5KiDiTjN/N5kSUrtBGlxlclVuXvKXZ+obFH2rFqYyO
	qohBbs0kCN/uIdWJ1QyT+WcuhCr3ZvxEKtUJGBqw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817c74d07d-1744a37c-7602-496b-bfcb-75abd0a03a5c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c3e4638aed294b7b3c7a447e44f66119113410dbde79e8692bb6d9bb69dde3c2
Date: Sun, 19 Jun 2022 14:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655650439
