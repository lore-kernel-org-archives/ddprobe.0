Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 585437FC
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 04:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661229052;
	h=To:Subject:From:Message-Id:Date;
	bh=nDER6eHVGTFW54g+SAl/tlr+UDGPH4U7IQfVMusE0A0=;
	b=P0ptsfPjLypfmOIf4toAZ+VPlwHQEHGQLdLWa17KeAjM/k6TVQlxb1Mi6Lby1mwi
	5HgsZkTAa2wUnHVGWGcXe2U7zEs42/RL0CFl+iBUzoYooVyqdb6/4f9yg3SukpSCnvN
	pm/PuDUNnXgNNpV+MbKJ4P39DA+kw1UjRtlcCTqA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661229052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nDER6eHVGTFW54g+SAl/tlr+UDGPH4U7IQfVMusE0A0=;
	b=dHDBXKRAtNX7r5RYReIbszbEEi+LCaiWZdXdp0Xv0lrOKKB6+AmdrH++SyZrPpSq
	Puv1qumsgVa/uhxSmCmu9ABJAh/eqmuI2a1i5VZGPxHqVAuIh2rYLhAOA6d1VIq+DGz
	LwiW2QZpgoJado9+DlOf/gSHUV+I/LhHS5habXUc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c8f7b2a7-b6c59028-d4c4-40dc-9f26-8fb36d8c42fa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a4cb27f74d7e9e054ef507169949682baaa25b4e06aa03e9ee6b1ade8388bbe6
Date: Tue, 23 Aug 2022 04:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661229052
