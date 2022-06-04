Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1029C7E
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 22:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654381439;
	h=To:Subject:From:Message-Id:Date;
	bh=A9RFW6AXcCzzOE5BIYdNbsz46loLK8T+2O4S0DfT/2A=;
	b=CP8ye35+tkgYU7uWzwtOL+sF0/KO+ZcqAtISarJN/NGS6+/PxPeu/56Y1EC0PuK/
	mrswUpjOBtBM6PBCPUg3uFqgC+pJIRtf6Xl0AMtTI2Tc0CtHLtFC+u6enC6xoEtu8iT
	Dys/VGbH0oLxqAjPdI2DkCvJYeigYU6pFadmUk2E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654381439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=A9RFW6AXcCzzOE5BIYdNbsz46loLK8T+2O4S0DfT/2A=;
	b=JmH8Xszo+QpIBamx5qGq5WNJ3OurHfZVbhnwMAoW7YVyYpyAW4lKBZ98UEcQS/4l
	I7ewj4Tldv+bqQ+U2wAmM2BIFwZYEg3hyYWH/x3HB6uZVSw7sbzEbEMEMZfH1PuvZ/M
	jxj3Mw0madwlHYRxG+d1exuHoLG+q4wyfq+wKPpg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018130d1690b-d1023191-7dad-4210-95c0-72204906753a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4d3e212435af4273286677da6b3950f7d3516215e7d1dc208d60d0a9fa1eebcf
Date: Sat, 4 Jun 2022 22:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654381439
