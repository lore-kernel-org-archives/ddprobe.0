Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E45E115A8
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 08:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653036299;
	h=To:Subject:From:Message-Id:Date;
	bh=I7P+PDXWdJmz952eHStnr1qlUp0+vbX6fxzVtVLb1wY=;
	b=P5gdVJNRjadGtAhMTi58W1KJk2vXybFCWebyZusl4dRz9gNRpOVcSEV574VDd72F
	NT/Yvd324YlpE3con4nBCd6TCvDvc+MqQq5Ityoh6BxI3PClGml1Fra1dIMmnSTjquS
	DP3b2PE4GdsnghNZqkAi/aoe0YGkvZbDrhMFFNXk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653036299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=I7P+PDXWdJmz952eHStnr1qlUp0+vbX6fxzVtVLb1wY=;
	b=eidXyJK4N7li+rkjvsTRCQXBCwaI+E04BbohOH8k5UP/RBm73ZIyqpkJQcf4XJx5
	ZHZO9f+ObC6S4SwH7fRi5HQnUjARAKeTjBIL7kHkgQxPoxwYdwAsma9UEIFedG31NIx
	DkGIk40/6z9uq+50vJU+Gr51jFPqBK9sSNQQPLUs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e0a43402-32b04328-742e-42ad-80ce-a272d7f4c4c5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 769ec46caae5cdeb89f7b3e03126cd1393b003c14fd8990d87876f9c41775204
Date: Fri, 20 May 2022 08:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653036299
