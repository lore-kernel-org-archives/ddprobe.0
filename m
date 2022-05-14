Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231812565
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 15:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652540699;
	h=To:Subject:From:Message-Id:Date;
	bh=yNn8SP1w+XRaIRP79iIm53/IGLsfOd3NJK7MgPtOY3Y=;
	b=OUmiFaYjuAOX1JELNqGHpuXcX9Q9zuRY7YOEto1z+U7ZDDJZ1CcaDVWcqFes5Jh+
	mfaDr7alKgVsSiVTokJ1jqBbe29mOzv+vRXi/dfrVXEEL52tj245LBeg9IBiWsIUq+b
	LDTLYCIkmZmCuXmohbd6DsLCvFJkHCUoNN2PVSPM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652540699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yNn8SP1w+XRaIRP79iIm53/IGLsfOd3NJK7MgPtOY3Y=;
	b=O+ekdiyQT0uXD0C58l9vy4D2Q/l7kkIoTV4X5Sxn1+zxXRG52KCxVo8pBWaoc7Hy
	daaWYn229yhdhs4KZYOIUm4zHjKszwmxqcq57kThFEjhXEsWHOBl3BqjQtFkTgvx+e8
	iXo9N+Cbjm6ZkkDtxdZyUVV5CaMXkRmMlNax2AP8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c319f2c6-142dd0fc-a3d3-44f4-9b6f-b96ba08da661-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 418f20f3f0284020f9dfadb9e8631b76acd151de625fd48ed7765f9806ed4c20
Date: Sat, 14 May 2022 15:04:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652540699
