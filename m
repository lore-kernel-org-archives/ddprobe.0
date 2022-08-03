Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62DAC3211
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 19:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659556252;
	h=To:Subject:From:Message-Id:Date;
	bh=HbNI5DiXFDyokrDmDdfR3wsPlf4nsrUEg1S5PnwIAzo=;
	b=PvpqVMHxBHQkk5PVCMZLXbMmQ+QRUR47DAUxzuitt5xWbkszea2Tp6FjsFvNjteX
	CD6nkAFLiWNZBQqxn/1XN0y7l0f3zupoVSOqUUPaRXi+7GQIeyySeabydzebZaYLaDU
	a2zWp20JPeHXGHvrRYS6SjxemGZ7OfWS0Q0GWy8U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659556252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HbNI5DiXFDyokrDmDdfR3wsPlf4nsrUEg1S5PnwIAzo=;
	b=YS0GZ/yrThThheDBiVg0QvvJc8P2wf/RRbYOZqhvgad5OnSNzD4l4Ma67+9KMA/r
	oRPAnuzD690zGA+46KXXLRI1pK02rgCDxylMZPqgcFVg5k/o7sTGbIPRfFvplS75FFs
	O0i19nxOER61gRA8r3xfB0v6BmQiJkoHXCqmL1NM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826542cbb1-d4650f60-d32c-4295-b745-96b5952c02a6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6429a2d09a34e57a88b291f69334a9cd1b2a57181484408a3ca0ff900a63f4a6
Date: Wed, 3 Aug 2022 19:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659556252
