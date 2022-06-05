Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E90AF4688
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 18:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654454579;
	h=To:Subject:From:Message-Id:Date;
	bh=LpYKlbG0ys0OPBT75XBm/3OV3UjdDIbcMewBVa/od9g=;
	b=HLnRzhYUIMD9cQMzQhWTx3BJoPZPFWnSyV6Fugon5sXVLuAqAOeBU80X3amsEYgf
	h25Gx/JW+L4U0e39np4QVO2bPgy3r4GmED8K3qLQD0Cc0fBXr6u1fqzR2m754IUmhoE
	/35EXxpHqcjBUtPtrlM2atlUEcdQBdiRFPHyyJAA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654454579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LpYKlbG0ys0OPBT75XBm/3OV3UjdDIbcMewBVa/od9g=;
	b=FVxLKgpotO4vuWdo8bo4y9jtDNhrZbt7sjCFuNlBC6PC6D0wJ8eCYHKPGTs0TAj2
	UjSJXLYpaPhU0++NORx6PtyOiMJmB+udNvuvf/VD8ogycVgqE9ZVyxo1njG02MW48DK
	zc5RvvMx4DiKvbdzIIqIUbS8qypRUpZSWLFaWn28=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181352d7014-ff84371e-7c20-4710-acda-eb5912de0545-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a1eb882a44b236462ed8340062dcd1f836278059527b67ca8d6966c17cb8f4f3
Date: Sun, 5 Jun 2022 18:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654454579
