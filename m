Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FDF42596
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 19:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652555819;
	h=To:Subject:From:Message-Id:Date;
	bh=NSyIwRChr3psY6kbjNu5rGrqZbjX4jvE02qr1dZc1Ao=;
	b=ZFufL2W/90uh+Aka7cER7TC5G42iL4IJgug9Ft+ASi4GTERh2xXNRJarEMVZlWU6
	FkEugxucyPFT2xhKnIoaaAgRzvIpmWbt4TpTv2yuJNqrdBmyp33dw645ugziL3utEDc
	3PpgAvuwprLl2mmTe+ZRJ2OABCSdHee+OQvIIeV8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652555819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NSyIwRChr3psY6kbjNu5rGrqZbjX4jvE02qr1dZc1Ao=;
	b=XpwHwuSwaFTy71ZTsst2rBwKCthLay1ANou01I0No5MHcid2N4Fr1r+BfFeEYEAk
	eE5cM0QSQKs6ZH0zV28Xo6s8lsVKHYD75EUhMWqQrCki91jhMrW3Un3bbBZ+SgQyyIO
	HsMHE0iSwbi1+K7Eg+rsPGP2/VtyKkAmhnaoyeFI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c400a925-bbfbdea2-3265-4e8b-9c98-fad700b6cdfb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 050922d79a84af8ace7f1ee797816fa8ae0c2aa06feee2c8b18ce7438096f8e9
Date: Sat, 14 May 2022 19:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652555819
