Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04C51290C
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 10:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653130559;
	h=To:Subject:From:Message-Id:Date;
	bh=QONgXiDMyjZK/nz9dENeEI3sugHoAyIrA0vOorOiUuk=;
	b=c2xGBuw5ZpQ2hi20bb5CkDN6u4+AUuzNKfNFMg/s6HF+OAaPlj4Nwf5vMAZ/pLAX
	Fr0CieGoOWix/bICcF/Srqf874RJWct4KZSQvD3UBWMixCBccT4VXQnd80a4X8ZnRKC
	G8s9aR2jwGZjVU6IJ8kRdhTzrY0Z6UXMhJFAtyu8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653130559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QONgXiDMyjZK/nz9dENeEI3sugHoAyIrA0vOorOiUuk=;
	b=elorxk/3uBIVwBH5SbDpUvPz/vRZWxKGhX7SD+PRT2fuDp8QNB7mdg7n3lo/hAEt
	3w2W0hEKk98ZnDjfBpF+mqe6wdLSQq5P1TuVu2F9ObXEoINAdNPMsmgThQzu87R9rv1
	xHVJSVZvTjWmhvoPxmGdY+5j0XpM6GY7gY8NaYA8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e6427f04-245fe5d9-f315-47c6-9221-2a3db0c58a34-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7f25dd7206f3b892a4e335eb588d78c5f3b7dd43d070b7370cb34e5942be33a8
Date: Sat, 21 May 2022 10:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653130558
