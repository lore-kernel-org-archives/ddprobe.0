Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231E733D5
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 08:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658305612;
	h=To:Subject:From:Message-Id:Date;
	bh=3zv4SShaJn+HnPpMoOSV+bJ9loOLumxBZDqrsvKACJk=;
	b=BOup9SMD89ht1wJu20jwHLAgpmIzmYSYLGfhsrPBV59LhofIeUDTt2fzMcS8fWud
	ER5bAtV9j6XEYv5fKqfjp+xrWEKwoNoSCUEzveK1MNXAuU0ldnhfYa+qn5L/IBm/oLc
	l2PD7MX2uRbmgN+erBQkHYfhWALGPvt/yY5NKIyY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658305612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3zv4SShaJn+HnPpMoOSV+bJ9loOLumxBZDqrsvKACJk=;
	b=Zcx+lBnE32HYh9Ettpb7NqREVTnmt3g1d5Lllss9jjQGpPQXLMmYXjxPYttsK5qL
	3V3dI3CxvKLaU5yU5RQZefFxp2462lbNA7mAuoPd7BzbGNcBpl2lHv+yE66BRZ01b6x
	2YkJHvikTa19LRHrDtglHIgb/1q7cTK57nUy4raU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821ab78a8b-5df97f06-0e3d-4f48-beb1-6a47d6820d3c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 385daf5518e07bbc85017a41983cac00e00d7ec5bcbba1142f7f7ee399113afb
Date: Wed, 20 Jul 2022 08:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658305612
