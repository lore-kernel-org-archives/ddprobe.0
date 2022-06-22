Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52E171C3D
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 17:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655917979;
	h=To:Subject:From:Message-Id:Date;
	bh=plL5B5pyPtMb19CZO7Hr3lXYfULTiBCETX5ui8kmxKY=;
	b=chpIQxeZaWE7p25MCEXF9xHNlGsKHR/tWYode0BrHYy016rYXWmxp85yCAC5E93K
	bw24ua9D9MrhL3zYpGh6j1twW9v5rJlX3U7z2yrKfRcb02FScqg2i9shZ+lpbZZsKzm
	RXjMH1mYNdgBK5ZV8Ee9U4pAr6lAPnWF7XXlTJp8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655917979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=plL5B5pyPtMb19CZO7Hr3lXYfULTiBCETX5ui8kmxKY=;
	b=bS4xdPQPr4WhaURg+DApAL2AxclcPDAG/goRisEfMZLqigDAytbc5K4vFF3F+S4P
	szDpWJAkY5n0nI0I4WytTvnRoMiLzNpk9R2xHLYct54wwopzr+v1yDUPCBKEfRadWns
	xPENu5T/uv5/wQgD3aS66+Ap0alOWIusBasdA+do=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818c6726ab-6e1430b9-fb78-4030-8be8-8808c5d42a4a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a755b5337980d7f671b7fbd8683045ce67f6b870e1ce1fcb5663a7f5b71d995e
Date: Wed, 22 Jun 2022 17:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655917979
