Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10D18812
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 23:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657322812;
	h=To:Subject:From:Message-Id:Date;
	bh=Sh/3X13WF4MjLFCIf9251As6yEOrHq5U1Jt4BxQxP7E=;
	b=IlthxuGzdKtQaqE77VtnrCuekaVahFyjH/Pdjx6BdORNmBXas8ye07gcitUN5n7+
	6g0ehyiGirX/gwai9ar/imdiIaiUsU6ibEDW0zk0Yzkf37mILAak8vYsGSwFegeTSfA
	IJ6LpOXg/zj2YaAQxzxBHtdhKbLA603kFZI5n+NE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657322812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Sh/3X13WF4MjLFCIf9251As6yEOrHq5U1Jt4BxQxP7E=;
	b=TspeTvB4/++vZSIMPCcRk7r6V5swirY04Ebj+8EPkyDpe6cwAIhGiX5+G3lQSY5B
	dpy+yAru4witabgQd+6HOZIEdPc7fccqxZg505gfpG3iadDL7ndv+D1tJBys8xL0sBl
	jFH/BEBIkIwx/smIKFnd8z5AjGtMUVYsRq6V42rg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e023339b-7eb5111a-e649-4db2-9bb0-215f3267a5e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cd8a632c3f03912ffb17fa8208072a87cba4e1d2f2a80fbb2e82801633a2dc87
Date: Fri, 8 Jul 2022 23:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657322812
