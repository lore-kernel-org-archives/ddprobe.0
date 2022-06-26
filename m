Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DB937C
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 06:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656223612;
	h=To:Subject:From:Message-Id:Date;
	bh=Nbq5wilfEt8aaEJE8ZY1zQn+dCrvan/CWfvQz39E9uY=;
	b=gprOvn2SobUVJ/toH3xTRuL54MuFtHSE9wlHTU4WFoqlSmBXf0e8Tv/rJlbBKSf6
	3AUTJlLWbr/001f3Uw0W49UPZmNFXm/U7+1X/3rr5kDLQJCaR0DyPyMOwexVqorcyep
	K4xPRTL3IprfTLu8m2cl80SDhFD0+WV/8baDigRc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656223612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Nbq5wilfEt8aaEJE8ZY1zQn+dCrvan/CWfvQz39E9uY=;
	b=Xwipw6TJAkfKZxRKIvUW/Qc8hPGy21fVMLrkrnLjllSicF1Mljwur1uPEZWlUfxQ
	z6wKRRCuxqXz1T/2HMhMxCXNIaCGNjesu+wVfm4B3yf2SV6FS4KOzIUK7kHz8TVec4l
	RHfivLGB3O4Mqn+TR6f6Qhh7muKZOKrsAQSTMLck=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819e9ebd95-e9a00209-8ab2-4749-be51-eb382106d432-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6477e8e3d0da941f5e6b3d33e00a2c26dd32ebc83bddc2dc421970efd3a40746
Date: Sun, 26 Jun 2022 06:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656223612
