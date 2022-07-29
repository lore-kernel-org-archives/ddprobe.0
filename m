Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 607D21113
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659112252;
	h=To:Subject:From:Message-Id:Date;
	bh=FHjmSaL7ohEDCIAQMJY5ooBpODATOXJW2jCiNqd6Z5M=;
	b=WF1+WE4X6hLZy37wJY/YJilii6zi0rt+fGALYddwvJ2/RAB6HsKxPrgvA6Kzq4Ir
	hI1whWESDB+MSzu6pdNDXwWM+SkrQ/8QU6wlTyvXZVsZ+FgiqudBo/bBHIDQxg7cRHE
	lG33dS/PFx5u+76A4rwvdyocaQtuGFm1ozvMIcd8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659112252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FHjmSaL7ohEDCIAQMJY5ooBpODATOXJW2jCiNqd6Z5M=;
	b=MyLlwCDccGDWiICQTsnN94idftbWD1z5mroWPsu9+YODE0QSWUSZPB5dSGoboGIM
	37lAo6zZbF1Y9auouxeJH6i4IOLgzFajtf0lqr+ZXrkdszc71vJBZ4Q7Qn4Rz0RZxKe
	RQTb5G16ohyYQ4EQAh3zIj160nIr5j2dK+sR5z7o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824acbe476-f94aa255-c60a-43c3-ab97-e734520acc1a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 29c4b6078bb96962ceef10479a4b1269757afd72a618439e6bc0d6e80838c809
Date: Fri, 29 Jul 2022 16:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659112252
