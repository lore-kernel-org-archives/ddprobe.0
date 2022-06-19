Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 003817B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 10:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655633819;
	h=To:Subject:From:Message-Id:Date;
	bh=JoKi/L0uOhNEEQt+ahc607NsdBuJ1ODDuRWlTXXJJgo=;
	b=WxPLSNaPhbUKxUtflY3llvFEWKUyp2EV3M52tNLaHHA0xsHBxLUiL7S/GSuUYXX1
	jQY7lfZxbKiX93ZepvnQpqGGRySx2WKgUWEjZybMRJk4jPCgmOHdtKXgCSu92CLQoaq
	q470bqJ+AjAAt/Vaqk1RJ3opMDVj3vVFI0Ak0hf8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655633819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JoKi/L0uOhNEEQt+ahc607NsdBuJ1ODDuRWlTXXJJgo=;
	b=Yq/GcuOqvAkFp62JXnDDAdpLJyNMPdNIF0CcOd66Y3guSVKMw2URcrhw1A7d3Fx5
	qeJgZvGNJ0CKM3JoSRqirAFlDdwGz+66cZ9PBeD7DGCxjpP6ZyTG7b4dDcNt4xuMaS6
	i9FAIvqP0Tx6vj/VFb/y17nzJzIoGwjJH+iW0LGY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817b773687-d049f4bf-3a55-4667-bfbd-60e7e3a9ebe8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6b3ccd61284c9b5d3290331239e474cf579a6412bb4e4845ea2c9f2f73d333a4
Date: Sun, 19 Jun 2022 10:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655633819
