Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1103F28E1
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 10:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656929212;
	h=To:Subject:From:Message-Id:Date;
	bh=8XXOj0YBSAxuBQNwA0hq7A2avUSeVV6PDQtheP+/msk=;
	b=YhSLHUmFFW69K6EOpPm/MpCGkSd1Hl981h53AqVDnJAfwZXF9nLGCwPnKZLsjE1u
	VtqRNdUaVZ0yFUVLUQYHEkmGrODe6JK070xz1A0E1mz/mXS292JEXBzS6/+auA8c+jJ
	JxENlvSzUF5/MfZ7RmvM//e4WHi/o0IQmYFitStc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656929212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8XXOj0YBSAxuBQNwA0hq7A2avUSeVV6PDQtheP+/msk=;
	b=cl4VWKsM8jIYQ3TdiEPiEp/b1C96HBxoQ4DdDjTscM5K9yHpRoMreZxAtVvzYdsG
	KOifkbiS76Z3MkLrh+wTaMffDPp+S+4ZFeHnvGLkXBJOn6e+eL+VaeoFv1VCgHqTwHM
	DdXZqkztsnBxOhoJPC9ETI9bSDx/+KPFNwyAOHC8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c8ad57a1-ea10cd07-810a-4346-899f-f6be406d4e01-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 244356687ada0ad17752bebc3909b6c688e40b1efeee4e655ae0af3f3457ae07
Date: Mon, 4 Jul 2022 10:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656929212
