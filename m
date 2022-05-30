Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E98718D
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 15:43:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653925379;
	h=To:Subject:From:Message-Id:Date;
	bh=DL5PhrubNDuFWzsqUXS+sPitarjRpTfVrJzigeIIWxk=;
	b=EXOYwQ+3kfAbFo3UYgc1E3cdcTSTBmTywAWZjxwPE0uFT+vd3rR9xDMeivoUhyq3
	bPOiLvtV+DWvZXDLEXrHSRPabK8D2R5DH5B90zlrTGyFa+ww19i3mv/8bCsBkbPlP9L
	3iqhuvTKi7ZY2dU47OXyNbFh7H7UicK8+r2uiDmg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653925379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DL5PhrubNDuFWzsqUXS+sPitarjRpTfVrJzigeIIWxk=;
	b=hHwhflySGC2AWZ+ZZewqniEGXTwVDyhB4gSD719B0pcl93Xb3o+UZ3P9BA20udSz
	+H6Mf9kkevQfOOPEkbDrR4A6YdO9gd+Qt9SNEn51XrixD+I0ThjYUf2LjwlRHCyVhHg
	pLKejiQR3X0rcE8s+HMcYbKjCRHk+y+Sw+xBCQmE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018115a27cb0-cb3457c0-2cf9-4e26-aa40-417169f6be46-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 68f830a195a02aa187e851e22ab1da2ba9639f7e737889987aa4c3c87e065c99
Date: Mon, 30 May 2022 15:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653925379
