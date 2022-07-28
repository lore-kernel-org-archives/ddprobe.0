Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE1561399
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 12:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659011453;
	h=To:Subject:From:Message-Id:Date;
	bh=N6TEZ1vHUskC6I9UUcdTogpgQV/jxY1+XhR1/yEF0Z8=;
	b=Yw10P7egrld1kLLuf1iniW7iqNZcDMI3sOwpxC9sZUafsDc+Ofml7KFTaXNqkm9H
	Q7aqTuE5khRn8FGvcgt5Yu+aEw75XUPtacJ+IA5n6XJLBCy1B1hGdq2zaIUvNpDX1Xj
	YBWkoa/J1cYwHiA24PLAi4EIRxArlo8R6z/iXCzw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659011453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N6TEZ1vHUskC6I9UUcdTogpgQV/jxY1+XhR1/yEF0Z8=;
	b=gMzAYHJOgJbVxPwWiq7IDN8NKW7MoFsZYDTGUVpE4sgYLLAwI+l6xQVJIibRYdTW
	xPh1f5DQGf8FSwtfHQpsaWNinENjGXMBgCPF5I5UYbD9PbhsbgfAW1Pt2pAGvGwLIrO
	GpLeb+6k9y2AKBQ5z+ZvaDeGluzmOF/1S59TkTC8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018244c9ceaa-7f80ab2b-a86b-430f-a772-33b312370878-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 58f549d815a0dd85c2812e6895d9340e07c40e5902aec55587556f2dc72c94b7
Date: Thu, 28 Jul 2022 12:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659011452
