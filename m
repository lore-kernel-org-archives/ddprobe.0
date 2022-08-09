Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4642123C6
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660029652;
	h=To:Subject:From:Message-Id:Date;
	bh=2kUQjGjGwDA4l24LQPgP6msoTNaw2YbmzeWszfYlzDE=;
	b=bZlXg6YYdImRBOUI8nUk0Xkr4Aaoj12MmmJxzL//6eja++A0Fm+BewxNYFo8kGMJ
	YVT51J9jdP2jS1Q/H4PKE16SGGIrpUwDM74Htxs0F13dyQPemMdcpNqX55HcZJp7piL
	s9tc177yYLH6zwY1bgZxyF1tohUXIcCoV6Wor8bA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660029652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2kUQjGjGwDA4l24LQPgP6msoTNaw2YbmzeWszfYlzDE=;
	b=OQwNJ1KM/0OISI2o2sFnQ7YQQuWGlpV3H67WA9n3NVPn9yqmAHN1K028w0r0MD20
	3Hq9gDDBl/lhx6fG1Hj4ablxGGzcPNmeR31CPMJJxFdkIjAvo2EP1jz7ZPrSYKYZfD/
	06tTwaHaToQlU1fAEyPw86zIG9birEuxVSWSM9+8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182817a4e1b-7f3cbcc8-24e3-472e-a9c7-274a0eb5342f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f30a7d65ea670ab618c2a30f27fbbb5f59a1ce4df829f9f95c3315ccb7e3c47c
Date: Tue, 9 Aug 2022 07:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660029652
