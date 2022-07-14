Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 074304C76
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 17:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657819012;
	h=To:Subject:From:Message-Id:Date;
	bh=ctKsgo3EIrZV83buKgv2Az0spQt7RdLARabUNvD+KyE=;
	b=W87xyL2Vh45a2ewFLcQr27ax3uv92HpEctgEwjtsreKqxIC2VQDipbqNFIVcVD4Y
	IIazbS/hGmm3r3zNB+ap7BzXZKj2JIDCc1Ug066Czc577ScEwLO7z1Jf0JwJDP0ygGM
	LSKkaE94lMb9obDXQdxF7BSJ/1kqaYgyR62iim5U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657819012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ctKsgo3EIrZV83buKgv2Az0spQt7RdLARabUNvD+KyE=;
	b=MFUf0eS7HHecYVfvpldio1fbYwD2Lhs24YewAgem7xzGNhoE+PgRvhIhDUSv3O6a
	dnlFP5SMJUq39KqVrfvIjSBingtUVkHMmB3AL2RDoC+wRnorFSmLJZ4qSn1Cau+eF7U
	c1Fs4olOlqxwQnoALchAXxQG/LqqppbX0FgRsuqI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fdb69cc3-eba8af74-3143-4216-9ac0-d8f86d641ba4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4e4235ffbee1be46253e7a94532a2c3a9914e95e427931b2ed7431dfa07a400f
Date: Thu, 14 Jul 2022 17:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657819012
