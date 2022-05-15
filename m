Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB4202F5F
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 23:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652657459;
	h=To:Subject:From:Message-Id:Date;
	bh=LmUeVUwi8I4k5FTrwZ9TMIj6SZ8K85CstMu/m4hY1no=;
	b=farKXgI+CZ8oEARgAgTbzSeIMzfY+LmuUaVMHzcGO/OMh/k+yqi4V+Vgw/qrJmIg
	rIJMCntWgdZ0xH0GvgLX0WRLQLJgWOX39nALvMBNW2M0ZjVLWUegU9u7QAhSFDgbIs5
	BiDEybFSxWQqtKL7iDJQAGsRjo119e2/T30DWMPM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652657459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LmUeVUwi8I4k5FTrwZ9TMIj6SZ8K85CstMu/m4hY1no=;
	b=HnK2MAxIOCB3U5JTomgQATfxm5AH+oG6vcdqQrrxLn5mYds3Awa9xTK3iUek3t0t
	i3li4c3T8/OuyRUTr+6PtRxSTnLo7gdTPwecKE3TmvjchwsEyDi74D0qyr9jFbJGC4p
	Gt8t/q7UbHQyN7cPDGnY/fLEfWIfbk6Q80Q9Nqno=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ca0f903e-3cb3cabe-5cdc-47d2-b25c-67d222f7e715-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 705956a073fdd57640039b837447f32650726d4bda9997911fd12f802ba1e784
Date: Sun, 15 May 2022 23:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652657459
