Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FEEB2F28
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 14:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653141659;
	h=To:Subject:From:Message-Id:Date;
	bh=eUOLS1F/4xPjVqJjvayqjoXohVaDnuZeHn7owFB1auY=;
	b=PFIWBc9jpP/DNH+KuMVcqx2keDyTW9pbIzhx6hkC4ZiyWWeE3pwC51XigS/pO4lq
	5aSZQ40yKCd+c9hp9+/ceFulyi6zj/Tnlzu+RPF22ies4zKh3GpIRa22WYuJZhEXF2t
	cz/5hBccX/IZV0zsg62NGDSRBEayLMt8+XToYle4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653141659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eUOLS1F/4xPjVqJjvayqjoXohVaDnuZeHn7owFB1auY=;
	b=ImtxO/vVvffTpd6bDfw4pco6FHka5aitWlKHiAlKSJMS11CEqm5l+A1O+zyfyBRu
	IAdZ0UQFXlWHPRyaHScIvS5xXcLyef85kY4i+akrhBCGE/CsXnwUS9i+APmCi+BuH3q
	OOR1GpeRgMEVc1sKC7S7Q1MAWgH2a+AA+it0KZ+E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e6ebde45-77357a67-a9a3-4e83-911b-95fabbe1b576-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c992c01daa2b6608967892b160feb47f6b4dec42e1a626e8033e3878dcc0c811
Date: Sat, 21 May 2022 14:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653141659
