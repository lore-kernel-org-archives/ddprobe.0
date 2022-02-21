Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CDF120E6
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 02:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645409185;
	h=To:Subject:From:Message-Id:Date;
	bh=6A34KKplI4GwORffbCylyVON59fYbOgABustQupkiSU=;
	b=VCstaGGC9NX6Wc0YsvUrwhT0AXg3Kfm7XXmYkiG0X0q+vwQurSwyTuN1rd/gGve+
	TWt2N6qTl2BCaGERnpUmFyi5Wp/N6eymZZ3V1pJbG3E8u0OEnqQcw42N1wNCQtHnHpJ
	x4lWI75KWhl54rK6GgHrI2HdfNYDY0k2mDwFghxM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645409185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6A34KKplI4GwORffbCylyVON59fYbOgABustQupkiSU=;
	b=i3sN4DfmO33xRQtjScGifO7tEYrCtPDAdKp4yxiU4T/JGKG86g1rUUZNNxiwojqc
	n+vHO6iaCiSSffwH5xbOnZviW91Rn2+yyMWWYyhBDVKaiX/3ZeO53DPrxmDoyaDHq0x
	kA3pZjr+GURuzwt5K9XtVl4K5iAqkqdcDHQ5F4us=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1a07abdc-c5a7ee0c-2819-4084-820d-0c79a9ee7e3c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6def1a89b643ff86f3727d4f6fd1367901537fe6d7ce7f109979261822b8052c
Date: Mon, 21 Feb 2022 02:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645409184
