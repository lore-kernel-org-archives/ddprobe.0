Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 003984688
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 20:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654459559;
	h=To:Subject:From:Message-Id:Date;
	bh=9Ra0svAPETo6cbHaYs+wJ18HqtfkH0P9t1d0GbyxIC4=;
	b=behzeE2dr6IChKhFrMYkNbEU8mm0at0RXYdSZmLpinoJI94vT6HzqkW7G+OJpTzs
	RHGY84+/zS9Yz//v0byv4JOEn38vAvdQqBHl9YqMBH8QaowSelPIxSRC70M+rnNAsO2
	VYIEhVLhXhTyF3K2KLdJvSvQFWKtThZ7D0x9ipHg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654459559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9Ra0svAPETo6cbHaYs+wJ18HqtfkH0P9t1d0GbyxIC4=;
	b=doMrFAtEUXuJcDA7h7Kt9lUCKMZzZneGlRI219veOGFhYCEXB+c3tksAKHtjDRrT
	4YNlS2P5bA5NmNqbyUukT3P/C+FUh4v7YRgaNTM/xzTyeVCZSmsX+DDtYySwrKCwtxO
	dH6abduZiJdiNKscKLIiHMYgzSpXVT6tHwC0qldY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018135796d4f-265563a6-c7b2-4a5b-a0d7-ce386afc8b1f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 74e24a4bf2a37ca7aa9cc6c581abe3bf30b5c1dd5bb9f164a3982f43223fb178
Date: Sun, 5 Jun 2022 20:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654459559
