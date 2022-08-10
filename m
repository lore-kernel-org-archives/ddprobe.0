Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6B342F3E
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 22:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660171253;
	h=To:Subject:From:Message-Id:Date;
	bh=QcB/hX0KfXaUYRXXQ8b3g5eyUVU2EQVG/ZnGdecmhjA=;
	b=JOscwOlaWP5cFCfrzeVtfcZzp2cqbMWHqk9IWf0JJt2Mbd2L8gdnCFQ6oayYAmmy
	83pVVCCrejN/epuHlEIEkI4MIwqNADfpav68T0PKRHKfhKfsM7LsEhQCRuM/VMCYx20
	KCe2Bhs+YNa1DRIIDeTSpMPPyuaCOu1b3ovThQLo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660171253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QcB/hX0KfXaUYRXXQ8b3g5eyUVU2EQVG/ZnGdecmhjA=;
	b=JKrQgavnNYi4dGcCaE1yeM+0Tq7SQ80mbnLQ3gUWoUZM337l1h/1tkMmwy65Wjle
	yR5bZ+qKgD/e8v59GTQG/aZXvlqx7JfZ+6TFLSiJc0H5sIKSdam4YRlN8XglaBApzqG
	Yb59hIoTEnacUHudyDsclWKSN03vLsTkGuMpakrE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018289eaf33d-982f08e7-97f5-40fa-b892-7115807d2ad7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: acd8762706c32630be84699a801172a5cc63955e907620979261e2142d424fdf
Date: Wed, 10 Aug 2022 22:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660171252
