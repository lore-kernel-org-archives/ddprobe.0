Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C62B57E
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 06:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654498619;
	h=To:Subject:From:Message-Id:Date;
	bh=O27ByPMTkBk10rYxxdE4soREjPoHnatkbUg5O9L2ufM=;
	b=OguKxDrjH6V1EVTlCxQ+9BtMLyo2AngGokFOMbEsC2SH68Z06GDP6LJj6e+epMEG
	CjffjW01R3Kh2AwZV0uycJUDlfi4fsNqTl/zWoiLVeseC4wIOXPFQ8F47/qSP48X2aT
	GnryZUGSqVI5qQBYK6zrKgwhdwbLY5tt7g98M5oY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654498619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O27ByPMTkBk10rYxxdE4soREjPoHnatkbUg5O9L2ufM=;
	b=FYC0FBEvIwkXhbwZ0Qv5hsVZ9uYtY2pK0AMduL7+XNbGWA6DBN/4cVKb0gZxEkoP
	EqZ6eTNii/EZ60E2r4C+0u8ZyZJinjEKiipa5ye/nxMLgvQwYLtzoSVAE7F09dw386F
	h4VDsBe2Y9n8tD+iYL+MZoFYxJ56mM0gwq42fw8c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018137cd6f58-cf09d92d-5013-4829-8f53-91c3f574c43f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 90e32cae05da832f97718cc954b611fed4c6afa3731faa204203ee42782ca930
Date: Mon, 6 Jun 2022 06:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654498619
