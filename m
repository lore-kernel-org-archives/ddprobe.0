Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55A56182
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 04:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660105852;
	h=To:Subject:From:Message-Id:Date;
	bh=BVovy9ArZHVe9l06Y7231mbZBL51f4xp7zEPkfenVqY=;
	b=L08l0GhR4jQLe1ETk/5EEpDlHW6wmAtzGGrOD+p6l/w99loUbZOzqM793PtGEx20
	ZvEuRuo9N3P0jHz1a6RKTlbe94WMVQp0ckPVt3BfjX0GzQDZWzn9r9v95PZqfZVZX3M
	uuSMpImlApP0irO2udK3trk9UyNQT3FJc/nLtz3U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660105852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BVovy9ArZHVe9l06Y7231mbZBL51f4xp7zEPkfenVqY=;
	b=XyIoxn5+B7OrxpJm68zEzczzt8hTlwVB3/R4v0KBzpneCpGQdqDgyJXOTY2YTB0t
	SYkAYFQdQvR7TDTtFV+8px8vRsrY6nbF6+LGw5qnaBx9Lht6MRpAsqN8+xZDcdUux+6
	ZHl+vua7/QaJROF77O6WIHloVm7XSgWfi259wEao=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018286050680-3c8f6db7-eff9-48a3-ba40-8987f062efe9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 380bd818b8fa4321cabf3e854c2ea4766e40005244bc9d1862ca1f0106154b55
Date: Wed, 10 Aug 2022 04:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660105852
