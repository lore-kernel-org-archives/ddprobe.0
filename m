Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E27187F
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 13:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660741853;
	h=To:Subject:From:Message-Id:Date;
	bh=26rKxMVTLKYkP4AR2XyrEe1IMJgvntu2JuDCq79fT2Q=;
	b=HEwfVcMlPnEy8/CY1V7+HC+xJPddmhZgoBvsu2yBKv9kKg1UbvSGBfsM7M8cvl28
	MAeDl7thPH+De7iQw+MOHQO4FhNZBpkXr7daIuNbWxiQstkw6XTBFr9R9dmlchtF1Am
	kUItxCdFeuaJfuQtcILdtrAxDva1tGMPBgJdB5o8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660741853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=26rKxMVTLKYkP4AR2XyrEe1IMJgvntu2JuDCq79fT2Q=;
	b=ZFacZnMBqfHvVpRpsc4khGUs2Hm/1tkMbtYeOdIOCeHIJP+L0xT9Dj+pMXsVjdaU
	8FnAOWOZHa2akqLuywqmsjwqcvPHNDAZlQ0R81XDODDgi0ZiGcHlxVkF835CKBxNxBU
	terx8kqw2ki4xUxfuQJ5+KdMkBMnms+mcWeglyLE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182abed9dbd-830e6052-1020-48e8-a8bf-4f72d9b2a99c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2f09544df1dc659dd7b9aef54e0feed7c1dedc3c6618f8898a833592911ca2ab
Date: Wed, 17 Aug 2022 13:10:53 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660741852
