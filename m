Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AF8D624
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 00:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658797013;
	h=To:Subject:From:Message-Id:Date;
	bh=U1ooufoeua3wA8p2ZXgf0oEejvx9zmZ3dAV7hAGyxl8=;
	b=HImlp34u2vr0/ABMGab1n9wTmX1RVJL6O7wDGCfum5QaY1O1ze1NwWjjmDOeuaiF
	P9rmRnK0qQOkIN/Ga0Ja8+U6/oQeMZcn/ChGrfQPY4VsVcvpVA23tj+kN/jPt94OTuD
	SNBWp1SKL+8wy42Djkzfu/RHtqYoM+YTQCIYZvNU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658797013;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U1ooufoeua3wA8p2ZXgf0oEejvx9zmZ3dAV7hAGyxl8=;
	b=HBm55Rxko6WCOGsRMP5zuPyTtE0Efe+0gx1/++5wH6Qv4raQ6aTzNEaSMe/FZXJR
	2RlIwTBrV3Bd6a99+YSBLJoeItL2yHEFOcvb5tKXiyUijkMfIDx5bObsCOJts+gskeP
	Bc7m/6NaFinOQRiQGPPhOHgSf7yr7Lc4LtxT9IQE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823801b5d4-ba74165c-4ed7-45a5-9571-cb81236cbcd4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3391717c783b9e4a159d1fb324dfda22f7994c0ab2cba07acbe7bc6cc6b3124f
Date: Tue, 26 Jul 2022 00:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658797012
