Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC8D81843
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 14:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655907419;
	h=To:Subject:From:Message-Id:Date;
	bh=f9typImdf+212R95rt/2SpGlMaGfkOe4TGrTslhOczk=;
	b=ZTQi+pClHiefsvwndPjnqPivIcNG/DfxDeyTKCjMFgBf2Sf2m0vZhwco6B82wkNz
	Aylv+4ZJoBEVt98vgyxNMIIKx2+tiF78BPdCosoUC74b82Q2vNf6Xe3cDWaDUcD4rQQ
	cLvl7Idk21w31h6vKeiBCNdVqUMIVkcoAeq1jwWc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655907419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=f9typImdf+212R95rt/2SpGlMaGfkOe4TGrTslhOczk=;
	b=QMHDlJBpp0mCz6zAnlC2roO5vTM8PBtdHh1fMnD6d4gZBLXt4FDmCxI3COuXssVQ
	ODO/WKglcXfwRR6SiKSN/Uad190G6Aa1i2V9UzUGTMtPJytJeBV93vom2LSm10DhwrS
	8oKuSybIjSnEyWlsfKbpNB981y/2upea0YLRAB48=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818bc604b2-3b1a6cfe-c635-4098-abd3-868140353282-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7ef11c6b202f4075f11283fa5c894e8fa89f33af42638c3ca18712411e7a13dc
Date: Wed, 22 Jun 2022 14:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655907419
