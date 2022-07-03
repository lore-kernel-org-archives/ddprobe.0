Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1213923A4
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 11:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656848812;
	h=To:Subject:From:Message-Id:Date;
	bh=PpsgDwRC8b/GAeH7tb430EIdUnh0J+Yqw/Bz39mNJAo=;
	b=PlDFTjfmkf5AtM28TT6cjbOTe8dk3Wl/gZHhpFyKK/7bHsYbJPAZf4YtL7jctCuL
	zZy4ncGIxCEATAwByTSSOA0/zCjPht85HpvkvQujaGsfUHkgD8QdHr2rH12D59Dc8sD
	0dUn7+Bzf7cIRh/eKKHgoWDqnQ3yukncSp1HK/Ps=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656848812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PpsgDwRC8b/GAeH7tb430EIdUnh0J+Yqw/Bz39mNJAo=;
	b=FAW4ivXjqVGVrkiY4x1h1eCNAlIB26ntmx7xLR9zbhr2yN0oPrMZQSOhE9kapTwN
	Zp0raNGhboMZ1/t4LiVV1xheGnJt2P+sBbgoCeA9D7bgDvD8BavtcsH/ETLkQ/cMQ74
	r53e+QCt/W+1bHWoyAKUHs22ImR1rXc9H7vIwaUI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c3e288eb-16c5125a-6ccb-48d7-ab0c-a0170542e09c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: db29369c2e7aba2015bde449f373070a8669021320fb95706cc34fef481347ab
Date: Sun, 3 Jul 2022 11:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656848812
