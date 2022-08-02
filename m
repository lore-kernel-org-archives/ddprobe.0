Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A8757F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659424852;
	h=To:Subject:From:Message-Id:Date;
	bh=UOtmz3SkFffGuJeMSCLfwyrR/TRay+LwQBliHmcyn3U=;
	b=MbKBSbe3R70A/BPvK7Nu2XoIwF6pZEm6VxQ9S2wVOq5TL6KkgZjhaMU+dQQqnALs
	4OY+mafxXR+Ik92a+IuqeBfkP9HtWJQrpNbPcvJhsMm+kyF/ydDOdBVU6iWd8fwpujf
	J5WxG+/ZXXLXPq8QCKZK2UefSqpQRrya/Mn9o8Ms=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659424852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UOtmz3SkFffGuJeMSCLfwyrR/TRay+LwQBliHmcyn3U=;
	b=CyKVGMEEhWAMRx/l2uJ4kWXLfNFO2qO1ETD3Xoo4kZct4MrIie8flWXc2FPVXfLF
	0/KhxZJXguoYVsmfWd6qmc6buyJKEYF6vM7nHaSDcYGvvBxPOUKLNGlSRNMfz+fAo3T
	mM1HwFAfeh3yNFLEMBQiUM+4of5NMcFn+9nf80KU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825d6dca42-be068fca-7139-4869-bc47-d10de62a940e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 722763b5bc38084f7cb28197110a41d13e75c4f99e45f0a416e1cadd303208c4
Date: Tue, 2 Aug 2022 07:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659424852
