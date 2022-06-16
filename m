Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F827A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 04:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655354699;
	h=To:Subject:From:Message-Id:Date;
	bh=D8hb59GOVSryP4WykuA1XPmqeVm51RWwJ+1bAds/izA=;
	b=kD+5DSPVB/m/sSY2yO+hu/WWSIBa2bWfa/+tKuD42Ega1bEhXvPat8jhVLphgNBe
	PKw5nSbAIbDWYDFD8WTrjJPxL6VDGnzb5AGQwHKMvum6rzlsKCJA3C9RdK0Mll1+VIX
	0GiaU37LAXjycK+ZNoYLZWAYs2y6iZLR0cnGsoak=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655354699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D8hb59GOVSryP4WykuA1XPmqeVm51RWwJ+1bAds/izA=;
	b=NY2YFXGKooyYhp1D3at2n0WuhStNEAq4PKPjknygF3tgtWprgjYALf1YpJX5x7uh
	NKRCfgmv8b/eiokiy8rvqlys5/vY+ta96dfpl220xFXg2BLT+NoqVCRI4ulcIVPRVEN
	idK+DKuxjZthw343ZmL2DiuAZZsrNF8ERqcHCPiI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816ad42e0a-701a7af0-bf3d-4238-8848-0464a9d65685-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 52c46d0595385a6e2f2bd57b68fe53a74b235315dd9896c93beb849eb4569d21
Date: Thu, 16 Jun 2022 04:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655354699
