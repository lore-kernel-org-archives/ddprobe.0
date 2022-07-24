Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F4B72F33
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 10:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658657812;
	h=To:Subject:From:Message-Id:Date;
	bh=7uNV34yHiEgJ07GNV1GS4LDXElplwSqOIglv1eMe1IE=;
	b=ivPXJzwreLEjjk8ZZKpMljsL8kW/KfEOwMOwKzjhEs0gCLmgT4GtaudjPpin15Ab
	EPTtirweXOIZmVGNUlG/q+aS/Q/7k/Am8rD8FB47MaRjz1Fp80frDs++ABfg/Ot/q3R
	uoOWmrmJzYZrFINoE+7R8yLn/+g5nGbuemVJwk2w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658657812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7uNV34yHiEgJ07GNV1GS4LDXElplwSqOIglv1eMe1IE=;
	b=YznFBS9hYpcYoijRkIektJsR1HrwTERT1OcsiuTCaaj3lTZaZSz1yif36uD028EH
	xKmS+CJ2i8Urq/Z1QDWTDT/DlnXkLDxg9Qqa+K7wgO7CIMyT3G9aLJBmMLQeb6tL0JA
	SMPFGLYtE1hPnt8G1naA5H3Nm+aJagvcYWNJ7DtQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822fb5af51-9b40b7f4-1ae7-4bd5-8c63-9708646e64ff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1f77749d0475125f1d62161bff16cb2f02e1bef3c2f68f19a78b53760f857995
Date: Sun, 24 Jul 2022 10:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658657812
