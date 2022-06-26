Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ABC417EC
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 08:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656231412;
	h=To:Subject:From:Message-Id:Date;
	bh=CEbWUGbN92IFXEfm9SIXmXMpSIfzBuyWodI8LT2324g=;
	b=LKGPn3vNq/5TKG0bZybvoXmWWd1//3b+JlAyfe5gEU/Ro1hPyawV6CSH82E/hVYQ
	CG7kpYfIaLIZMsldlmFwEPKRHAdz2Dzg/9cdbzEGrckACYkLBPIMSqPiL4QMRfP+e47
	MNanidH8jnb+6ncgk2Owqh+HVgojFjRJkuzzs5A8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656231412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CEbWUGbN92IFXEfm9SIXmXMpSIfzBuyWodI8LT2324g=;
	b=fgskXN/prHoaRnNONtEDgT7TldQaQFqICyLAsOrxSzeUuUVdHzM0vYnyQoxZ+6iA
	AtI+WkACIaWYHi/TFmelLNJFNptyP9TaDQJnBE1IkvIri4WyxDh3Xi9MukqhQMqtoGe
	OHk/DStId3PiLia1aef+Glbg5aYP57tRGBUs5RL8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819f15c27f-6e2a0f4a-cc9f-4163-a53a-0b18895382ad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 76bfba0c15d3163a3360d316600f1aaac0bef50836a8299da0a8343ca4624e19
Date: Sun, 26 Jun 2022 08:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656231412
