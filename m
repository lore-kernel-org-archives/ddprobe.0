Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A711B17F8
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 10:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653904859;
	h=To:Subject:From:Message-Id:Date;
	bh=LVWJYFaQyS3OVEvWkB+I940gLLaBhsnrfuN2Im43Vho=;
	b=P4SwoN+Jn80ahZXm46xsItyYHYj6Y08HbRjtswbd+YybbJgVVrk1tHr2z4r+2xYD
	0W4ekZwGJ3PBJqeKKqIh4euHsKxgFme8t5MOqlk8U8DFE7cSIPrQDW077jvm7BtBJoJ
	Usgs9qkcsHpB8VwWQ6y3DvCW9lBYiMkK5tx0ELR4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653904859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LVWJYFaQyS3OVEvWkB+I940gLLaBhsnrfuN2Im43Vho=;
	b=jvKRWudgxzQ9jAjpxIluJ/aBExVa9EcorEvXwBO9iu9AF1IHXpZ3zxGrMVixDApJ
	HXyB+AiOWlyhMmPdgCf0Gn81NYArugyJ5SKu8h9P5c/ouLFtgV6FkhhIFD+E6Txif/f
	aRSbRHXhJMtvTSP7ISkmA95eqHB4dwKoJcrpmOns=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811469607d-569c8eb6-4884-446b-9acb-cb378f0782d3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 93b8489b6b5539f952ee1b2fa0471ffdd0dc37b999be848753fc707c63e7cd9f
Date: Mon, 30 May 2022 10:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653904859
