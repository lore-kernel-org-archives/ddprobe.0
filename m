Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279007E0
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 08:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658823412;
	h=To:Subject:From:Message-Id:Date;
	bh=jl/wX4gxMsqrSEosicRMtcB1m2VBiuLTA54PvCkTMao=;
	b=GtzyS9UnY1GEghzRDBbrOb+Lhq5mh0Y7JUu2Yq2gZ6364drws3GO2VV5snS5oEjm
	XwiJzmkhHE01+Hk2o//zlBcwk75HPdZMoU3RKaVrrpIhqgj7KC3b9vn6Ghvt0rYhEs+
	fSPU/hGVeVMPsEmcsnEow6NJBPhRplyHFj/zwgVA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658823412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jl/wX4gxMsqrSEosicRMtcB1m2VBiuLTA54PvCkTMao=;
	b=jeo/fNqbBuCNUziHHUn+kJbIwuhmnevLwwSLIgHBIQTWz0oHHPQMInMaORTtrpln
	7cJhclj3ghR6CHzgTWzBeHSqL0bFOlPgQpCaNGX3nCBihFNRCgKqKeFqpJzkmRloZCE
	xZFlTw8zBLeV+eUdpzGKQ/idVeevfY8HtKgKycQw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018239948a33-659f8e55-243d-456f-bbf1-9199a58a83bf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cc7cfc9cd120e76104afd93c510d9747789c493474d4c1e1d0374e2fa08d7545
Date: Tue, 26 Jul 2022 08:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658823412
