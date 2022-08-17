Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A9F7B
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 02:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660701653;
	h=To:Subject:From:Message-Id:Date;
	bh=2yT9cjm7aR7SgR1yjGzfwV2dpsgMUPMVf98/wK01ZMo=;
	b=J+x9uOXkPcQF3nyomcEc0IYo9gDQI6DZNTeFwONIfuabqhioZJZVhnM7GvqGxREW
	wPib1YE+tm9FFMYN6u28YgwodvCoiq59B9Ckp8M4l6DuKFiiR8c7WTjViPRu1u6GpBE
	pA4Upsnisv8I0Leam5tZj/U+htM9lGNvV7mk8qJ8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660701653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2yT9cjm7aR7SgR1yjGzfwV2dpsgMUPMVf98/wK01ZMo=;
	b=D2f/nd0V3g0XUpnlPfYM+xizcMlt098QpumwoGMNlSUm6Hc7/JnHrtqM/8TE4WJM
	d3Ak+ZNC+VxWcmKTY88UTeG4NHqiVm4n0QOWG1w0VjAF2FiBld23ZIUFwLRhpdrBPrF
	wsQYw93SHtf9T1JNU4VIs5IdTcc48U9g8K3ehGcI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a98836a8-63c350d4-df9e-4f27-b9ae-f844bb0d4b4b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 68d0186d55e85cfdd01d43cd5478a3eeacd84fae6be37eb5716e5c27c544c9c9
Date: Wed, 17 Aug 2022 02:00:53 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660701652
