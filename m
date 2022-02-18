Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A14672F32
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 02:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645150584;
	h=To:Subject:From:Message-Id:Date;
	bh=K8eCj8pvtsdNbti000QNk9KgG+olJ/zIMp/RWiBmJB4=;
	b=G00J7p7GQSNwNzJCvd/ME9WQbLji142FYTyKnXvtv1nRYlSGT+Xf1nDcf8OfJmzA
	ohiUudkr7iTddIegN0Dud6Px3GFQNb8SniQ5WGTs5TP+IofUXvwjuVMxRM+pKnk6zlT
	TK/lomeomq5kXYjUMBp4latmT6nkNTm6nrmE1V0E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645150584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K8eCj8pvtsdNbti000QNk9KgG+olJ/zIMp/RWiBmJB4=;
	b=YYJqeF32mWupG0RDd1FU2yEbzsgP/TEbTqswBrMT621kUCNo8BxBQBYiYvDDvQkw
	pW1gj/cM/j8/hyRTjZyhj9/B5bPhdtgs0Naiq4zdivplejuA8MU9xdLcVlbHy0ihXwX
	HeHNxRabxf1f4YxiEV6wxUiFIm3yIGAOnfctCSJc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0a9dbfbf-d160c74d-894f-4280-ba27-15e208e7de10-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 204ef7ec922b4f12cb428302de220f93e417a5161f11699084e83a2389b744d0
Date: Fri, 18 Feb 2022 02:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645150584
