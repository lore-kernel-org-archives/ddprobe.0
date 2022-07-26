Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18CD6369
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 10:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658832412;
	h=To:Subject:From:Message-Id:Date;
	bh=Ie9AjXbsYznO+H/UcOp99F1CME2z7R4jRG8Usy+AfQw=;
	b=EUoZhlAe2CM5y+qKGzdx1UoZFlcHA2crEsjQsxuRbf6ClWHS4AdtFiXEs1r3LD/2
	Nn86y7Gqu8aJFl3K29L3j6hDyvK+ZXgMuRS+BPAa8DL+u++QVWq+pq9dkgQjmk/UU2S
	Vsk63WYekepqPzhCSaV7/bb9uFhsmWJcdAg8/Q5A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658832412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ie9AjXbsYznO+H/UcOp99F1CME2z7R4jRG8Usy+AfQw=;
	b=Tat3Ge/4W7e1qBkleGECiHMUnLzOyll7Yv48duPGcjI4bK68UhY1j1NDuCDnkKyZ
	c084JitB56F9WFAsV0R58us/HDTjqDS0p0wP63xqtzE+jsS0+WG9Esw9ow58LsVUBxl
	b5WPRUpzZcwaqQMCUn0O15QaeETBejvCCFQEUbmU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823a1dde7f-27af9f41-671f-415a-8f3d-0903c2ecee94-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 33b00cd707a70d6cde2aacc00d7aed9c9658b3cfa219c947897c23de3d9fc7c8
Date: Tue, 26 Jul 2022 10:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658832412
