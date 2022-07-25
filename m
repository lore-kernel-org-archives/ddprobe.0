Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2374220F3
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 16:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658765212;
	h=To:Subject:From:Message-Id:Date;
	bh=nTzmx1rQ3BMoHLN37EYqAazNsgzng+XlnlM9IRfndmE=;
	b=ECxftMjKZQwx9dbf+l3okhkseh3YGwjebbFTWLIrbbwiN42lxqwgSwxpZy8VH7gN
	QF+xJ/lsjrmq67WQn3MXBF5ZOs9UW6+bANLSNACzKXq4O2NW29yidr209riMg/DNAbH
	EaL3y3Hu7Zf38IabMt9Qnoqpp84+RrsWrdGgR3dg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658765212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nTzmx1rQ3BMoHLN37EYqAazNsgzng+XlnlM9IRfndmE=;
	b=XiAQB0+ute9ihEqWiVTBsPS2VEGTHawFdLCDouFl1Yum1nV1MSfzj7F1l6kbIbb6
	7/z4XguYtcnGAf8vyEN48FsN7LvarSjclMqhDyYGoJGa6E1bu078P4/8D6enxCDnHv4
	pcUpTYVJK4VP1TjYFyTpcAjHBydLeATFBY2EwQRw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182361c7a6b-fa4017f7-d7d9-42c6-a827-fa4adcce3947-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a5dde36b1669e4efd0a6cc544b52ac8c66f7fc2143b13b5c383e47ae80959882
Date: Mon, 25 Jul 2022 16:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658765212
