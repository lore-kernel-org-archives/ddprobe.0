Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1000620F3
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 07:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656315412;
	h=To:Subject:From:Message-Id:Date;
	bh=E2S6Dz+P1JxgkJQonadBwEVc+YYdGo11QYK1Lj/QMsc=;
	b=MmSE4F967CQMzaW0UsUNei00khqScMI5GLRo5qOnt7OMlf0n7CIKURZmrP0rtnCq
	vUkgYYvhc6Tvbvtdw3wMrtb9NytskWJfWjxWxvjbTDdIdjxi24c50SsBXAu8O+PBfQO
	SnUFfk80cWYJZxtODWcfVBw+hRfNM3GW3z4cnBBE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656315412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E2S6Dz+P1JxgkJQonadBwEVc+YYdGo11QYK1Lj/QMsc=;
	b=joGgizmY6V8qIOUY4kGvK8DYZGtxHs+rUi8AfBmGI8QVvMFhd4zclrHj5inbWbr8
	6JlhpJ3OIx79pdKRnTFNLoTxpfZAOwTZABC7L1OurGDf2B2HynRLwEo0XjtUtvV1tUJ
	KlvHdG0Z5lkX8aOmr7C1bIHhVHOY96KpSw9fHTHQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a4177f4e-91aa16f2-5004-4f30-9f53-8561d62499db-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c295c8291e722423463a19646e7403ed10a45b783862edeaa451a110d7a67c3f
Date: Mon, 27 Jun 2022 07:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656315412
