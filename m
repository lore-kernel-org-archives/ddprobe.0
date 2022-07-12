Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FE8023AA
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 04:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657599413;
	h=To:Subject:From:Message-Id:Date;
	bh=WdwxoPC2cJKeQjpNFJcML03FCqeasyhyqM7HjD6Zgmc=;
	b=Y1RhKTGFXPb2TpqwaLtI+KCOSaUDhv52pDJSzwPJ10Eq8/R3KlCHCC1WZa7z1u+d
	WzmHjQu+JCCDuYCLylI4u4wR7MWoOZVmZ5RBgcYWnm+dlGX4jrV03dNL4e9DEDqnqP8
	F/hHKR5ihilEqmdIrwNDpPmd8ESA/femkjy9+gD8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657599413;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WdwxoPC2cJKeQjpNFJcML03FCqeasyhyqM7HjD6Zgmc=;
	b=Gnx8E8b6jATcEzbiQydqKSws12VP/rvCNS67verfV4mVYre6aTzr7rjYXxqCqXx9
	ozvxTqa1835vqb0/r/+mfyWH8Tng1aNdEEtqpjijpYUbC3lHSYLyB80iguoM2Hungfx
	75gDVEGmFNNNqLczH2PBUGdDEXyK4Ou62THSvWPE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f09fc84d-61b10369-9352-4214-b0ed-ef5a0eb45247-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4c3061974fce4a8b0fe07862cc10a8aed64c963b7e09aa36702c3377f2ed000c
Date: Tue, 12 Jul 2022 04:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657599412
