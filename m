Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6B937F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 13:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659360653;
	h=To:Subject:From:Message-Id:Date;
	bh=xxVCYSx7FEH83tFfrs1mSZUklYSroVCFAwzi30q+jvs=;
	b=dptP/LRJ+fk5O36LQEcUmodQWTTfxC4GWkGGQNn8nIrNlsK/HpOapgSWsfS6H/Y+
	6fBS7v/NNHA4k1BQFL/tom+808bfs775/r/PKeBkAlxO+GLNk5SHK3cH09t1Xi6SmKE
	gaqxmFjbAilFDIIpgIu4+vqmBW3wuA2y1M0Sklr0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659360653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xxVCYSx7FEH83tFfrs1mSZUklYSroVCFAwzi30q+jvs=;
	b=HpYljAOqyrwaio7EM0BqNYqEQCCq2tS+shx7vbuGAnFY9RfR9FjX/MtMAJAHe9qZ
	S4uAmYup/zRDS1J4he5SQ4RoTRT2x6jd7sb5AIsUwsjC3VcYB8Gor5NImB2Pqty4TqU
	LNolCN1wTwgXTjEphbiPagdFCEg0q2uGmyk/73xM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182599a2d16-900c46c8-9f78-48b4-a6ba-0baed0c948bf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 652dc44e6e1eaa0ecc738d5275f9c23c2188138166226a6d2e03d7d14dab6cf8
Date: Mon, 1 Aug 2022 13:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659360652
