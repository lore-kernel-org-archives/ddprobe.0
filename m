Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AE9F7A
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 07:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652685719;
	h=To:Subject:From:Message-Id:Date;
	bh=WUSeo4YdcFHYR1Pc4tOEruzgz8AcqNXIv0e+8XG6vy0=;
	b=b41+O18fhPrQ6hTwho3KwDeoa4WBQj61AtVMibAhqPUU7BAC5+XIfqI0LSwH6dHe
	XWuJgBahdtlF038VdTgRWdQ1KOxYcZxbrSsJwtrkvDBqNUE9uetzEPdihY9NQKz4U58
	wF4KAQY29f4PRnMahbKVwJHAqOl9oTmk6l/MqplQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652685719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WUSeo4YdcFHYR1Pc4tOEruzgz8AcqNXIv0e+8XG6vy0=;
	b=b+/upDX079Ly6Onj8R9bjHbiS/00yLKLoQEZpDOMOcOpqy2l1FpjJqjCcbrz+WZE
	98Gkh7OHEG7zQ3mnvh25H7G70gZ+85ZsO1N9AeI5+CK13otOOgWBFi+vC7rmyvLpzdO
	k36qAYBC2v2xaQYG3p5OQofoaq78Rc5Dtl792rn4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180cbbec6c6-ea2aace7-d774-486f-9851-829c78e86882-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1d2c4b59d42a075724e249549c928f0eb61083df6eb54b3b64d0a13c5c437987
Date: Mon, 16 May 2022 07:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652685719
