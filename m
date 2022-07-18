Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209F5A5C
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 07:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658129812;
	h=To:Subject:From:Message-Id:Date;
	bh=nC0nOgBxF5hnX+K36z5Goi1Sy8oOb1qJww3D/fk6fh0=;
	b=dSciJXjvlM/Wme69ra8G4R5w5LitVIbFS2LBnl/9u4XGy6y58Ly2pej5WyKTqqtq
	iiN1iyb9Hmq4O0e0t3oBJvzXkvwlrVlz7yyelV6UDcMrXxhzehRMIBSNUMKQAvsaQDs
	j9wfpDZ75cx8gs1VUPBwCSVSc5MLcyw3HakXNr0E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658129812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nC0nOgBxF5hnX+K36z5Goi1Sy8oOb1qJww3D/fk6fh0=;
	b=OQyHOR1CIsTq87bL1lYdDCGXF/nLAMk9p90c6LnJKsZdRA+4X1zNB4CEA8sddC9U
	+nBaiQ4V3dMe0N79fNSQv1tkQdrlxFo6zdoCjplm/PdmkcuT1FqLmms4dxNG2Dx4jMx
	tAI7/2kH4dDT7hadwxx5jg/zTifyNkEkA8oWUKlI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182103d0b48-7f7158e1-019e-4271-aae7-e1688d86fcf6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: da7df56ef0348d512a13ced321a0cd71e080e330199117f1f056371af1960b94
Date: Mon, 18 Jul 2022 07:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658129812
