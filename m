Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA6BE15AC
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659256253;
	h=To:Subject:From:Message-Id:Date;
	bh=xf2mI6sHmRdboTr+hU2qXyNnhABIjuiUNDPEPeM1oGg=;
	b=EZgo8b/63vbUWWAJvbdzbQUzm7xP69IzNlNbznrStG4bA+SJEK3VYSEyz7zi0E1L
	squCQ550LRzv03WDprhhYn55+XGic6uYShFfWCEAIKK07Iu68OPD/e5KK4PI9vTDYpf
	GCLtKdUsVCaVB6F3l7Ic6O9dpDywSs0576QZE4Uw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659256253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xf2mI6sHmRdboTr+hU2qXyNnhABIjuiUNDPEPeM1oGg=;
	b=Hw4t4Xc/TNpxF1idHi2ZUYNHvnmg4vg3BBBC1Odn3AFIbNGdXPLFGoEN2ZOanIUT
	VlOIqiNdsRgVRFdq09/PhXF9yaNfXQqnnXsTiJ62p6OyQeVyxSyAvcbY1XfC9wNvkmU
	M+tL5pzm5skGZfslPytsyqXlNxkFtt68TFXuB/QU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825361286a-36b51e61-648e-4f9f-a4d2-f4f47c9a00df-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ea2cc4d564702200598b3b16ea236e6dd36cdfe9aab59c7fb9d53046d22ee39b
Date: Sun, 31 Jul 2022 08:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659256252
