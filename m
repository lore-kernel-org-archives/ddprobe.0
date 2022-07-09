Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342BB7E8
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 03:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657336012;
	h=To:Subject:From:Message-Id:Date;
	bh=XLyec+6Omowbzu7nr87uoS3RH5z08GoM/IV1SqCERPA=;
	b=X5xVn00CvyxggicPkTvkK/Hr5i0a6kj7W3bCEgmHFPreErcvblgxp44t2cuxe31h
	VS+kxTJw6PQQk1kvgnsZnAZznvW/jXoGEx7Ya/gxwQjnnPer/XaiQ6ku3+2sW3+xVQk
	8UAecSwLNrBLzBEj8Lfo9J92ERQW6swy03aJcCBA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657336012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XLyec+6Omowbzu7nr87uoS3RH5z08GoM/IV1SqCERPA=;
	b=Udat+kl/ym1PP3pc+x8blY0p32bxHQ63kzFiKQlyjVKU6jyPPV4P75VTa5LBrBKA
	a0bb57TD4k/HL7m747sl38DbcIP+VYCeG933KgACD4HhF7suZcesI9dIcqhdZEr0KG6
	N75ec6F4fs/aEXtyIWjq813BMatvpxjLXwRLGVww=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e0ec9df0-7542eb0d-71d6-44e6-a38a-bd48f1eb9bc9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c944425cacd488cc4c50ad74300380b9ca4e95662897594e079e34ebf060b452
Date: Sat, 9 Jul 2022 03:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657336012
