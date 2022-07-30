Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B531FA0
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 12:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659184252;
	h=To:Subject:From:Message-Id:Date;
	bh=z5QqLVp+3F00G5nw2JYc+Rs+cOrCyTuL4pVSyahNofY=;
	b=XCavbA1WnPS4pYgG7YtT/+w8E07c10x4aCw09vVMx+vCVeWjfX1ThciJyzKaImQ4
	peFS5uBZO3o+8fOKYjzcnAMc3b9RQXlTJ+2QJUTkK2vr2EeX5omyY6nbYVlYREyyH4w
	MQQ8RyS/Fw+nl1WunjRc4wHNrMdXtTSqzWAPd+Is=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659184252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=z5QqLVp+3F00G5nw2JYc+Rs+cOrCyTuL4pVSyahNofY=;
	b=IpY4lrL9npqJXBt7G5pYjV2keb+rUv10qa//0r/kqOKc6WsDJwBA+SI1pbWmGy3J
	QbK5X7WhT4C6v98zz4lVr3qchBTpSbQ+3+AWv9lDwXlhkdyv1psr71eyDUKKwYL+Ssn
	MBkW8lKyxaQt6VFdOMOtQ1ONMTUKsaP+O9+ndTK4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824f168684-986ab9e8-e568-4f9b-bf7c-824b112a4b24-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 690bac0a957d11734602c446603fef223aeacb52f334646c95897f8ce87fee2c
Date: Sat, 30 Jul 2022 12:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659184252
