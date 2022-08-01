Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304147F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 06:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659335452;
	h=To:Subject:From:Message-Id:Date;
	bh=/61uBWRALdKuygmiavsBoY7aTcCffHb7oEajm4LijvU=;
	b=ZLmYlfGmctx5bKOXZNJFWSyG1awGN8CKDi2YV4EwbUtqsp5uEiA8GvS32TQaCq8O
	5j5Ped2hVeBzjKHasKEI/3rzO+pOu4wJSY/FxgYu7CpWG3gI119F+iQ0017Svbpwjbl
	XPWHCbSsMOpXQ5PG8i/riukkPQyJkW41O0Tg0SU0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659335452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/61uBWRALdKuygmiavsBoY7aTcCffHb7oEajm4LijvU=;
	b=EXHqdVAtpkroQ94i1jJqPXb9rAIxHc6AjKaFxoIgA8KSpuzNMPa2BV5aVSav8xCK
	OW0zJyEus8FHykJZ2QixV08epd2L18HnrblNHdCMT5z2QRjT8FOELXfBre8sYDxfPYt
	aHVd3x5/sT9QtRtWXPbKba9Pwy0xgtNxBta6e+YI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825819a768-5c5a601b-77fd-47eb-83ee-c83419e8adf6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 59c9303397a4bfaa0907fcb891a7a6fecd215f443327b0cbbb5e56fe23d2e8f6
Date: Mon, 1 Aug 2022 06:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659335452
