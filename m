Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE677E
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 22:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654293959;
	h=To:Subject:From:Message-Id:Date;
	bh=oT67W7tLog2bKy410Ei8L4g4vrGrZHE5Hz0aezJUrGQ=;
	b=ZBvP2K7SqSBeTmeuLvmHfYxsyxd2ahW+q4EbY/Q91P0hpB5r4SZifDwfmsZD1/kt
	EBTO9fIVs80WXDqapvaWOo3PpApSsv3pe7AERw6dr0wocameBk03o+Xtw3MfQdKub4O
	gDJF6sVzOCrToow49mQw1VyAQtKcSLlVbBY41vVc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654293959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oT67W7tLog2bKy410Ei8L4g4vrGrZHE5Hz0aezJUrGQ=;
	b=YFgk6A906ZUPPXc4Vg5ZSymxZI2PYPRiLTbPLIU9HkmsozljcnlD76iIPYs63OSI
	v+j1dAXAmobQM7vEq6H2w0lZCHYbuz5Yd7ed7chjfaq7FfNj70iYrSLZCMxjyaWjT6L
	5VlJlBAYMdyhlWuVyUEzWxgu4706B/rvCIvKPwhM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812b9a9276-e52ae441-0615-4c57-b137-3ad05963bd85-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 861d0a0b87f28ca92d5aced200f2f7639ffb3dfe7c24dc80922b970d2d9e5532
Date: Fri, 3 Jun 2022 22:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654293959
