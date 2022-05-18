Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E038646AD
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 08:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652862479;
	h=To:Subject:From:Message-Id:Date;
	bh=LAMajH/m0AUgRjADC41BRvkUHIpXw4XyCXZCDvqrE6k=;
	b=P6lfKcULbhHlv/HxlC39dGofv1bvzlh+mKuqkmufBWzbGY1OzMnLUq1WikPripCC
	kFMYz8oaOAri79BUPLlVq1pFtDtDViq210uTYnYPa1fF/seYpvPxtaQiT79cUAXNKz1
	1IyrtPrxCnSc7FD5FTGyV/j0wJ3FPCvhdm6V0tx0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652862479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LAMajH/m0AUgRjADC41BRvkUHIpXw4XyCXZCDvqrE6k=;
	b=CK1RgbXsDkNHpKV75pnzuMkbTss6wmG2bRB9XX0C3x2b97s7qGS2elPIPc78CrM+
	unTABjLye3wf6LS2DnJG4+xJjoDhGwlZpUskgJGbX9455wJLTWMYnDjvLlexLFaNMAj
	cwLgeQJg3ej6J/xvMd8d46Lxxl2OezZoSiiATNSo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d647eb9b-10fe2fdb-7f56-43c8-8e45-d9b8afe0eaa7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d3a2e0f7de682efa67491eeee6d9401f34f6c7678fe9966bc72eadb7ca76509b
Date: Wed, 18 May 2022 08:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652862479
