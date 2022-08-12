Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E9A1399
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660286452;
	h=To:Subject:From:Message-Id:Date;
	bh=q98hu9cl2xLFILccVJlNu8AYFmPEZmg6Q3GtW7GeBbc=;
	b=S9SkXmIkcaTQ6c4CvTsWri2RqMICM3ij+dFaMJqcbxIUw6e+CB30SCssVlUje+zR
	26Y+RrTa3kl7bh6icAs/xG47Lb61ysmdTG4sTT0M3/54mGO1nBUUd8VvQQOeeneTLpn
	mGf3TmgZsgVI6cJqEwl6oSAIoTgLmsRePqr11jQI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660286452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q98hu9cl2xLFILccVJlNu8AYFmPEZmg6Q3GtW7GeBbc=;
	b=Bl0EXImjqLDuTRM360rbpFn3mhvOWu2sfJ2re4AmNOF+8voCKiIrhQFBgVKT5r/o
	Ak2sL6vyvOIx68OllvdDW+s+u5jfMEq2ZNLjvGaLM9+WX+76R+RGUCUkpGFaMU1XrrU
	LUW9eDfXUClPLiP5lJ33t4oElPtgse5jDrJ3qGT8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018290c8c326-ba86d8ce-8796-49b0-b897-c69e54f99cf2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 47db207cfc28c07ced553820a80423fe28cd14ac0fa7366218a7d28066142328
Date: Fri, 12 Aug 2022 06:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660286452
