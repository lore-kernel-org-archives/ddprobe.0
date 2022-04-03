Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA38B7A
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 15:24:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648999498;
	h=To:Subject:From:Message-Id:Date;
	bh=ywNYBM2S02N0I7Bep8GHOli6Immrzf5tiU6m628u560=;
	b=BI6A5qDNRqUxGL9T4xuexWSAvM0otG3VkDeVF5WTVUYEmncfcvJ8Jkcwg9N+sqL7
	x5FqHKWesKGHgaMt2I7Y+gIsi+XJhzNtTxyFGtmx/cmsD53yYaM8wSNGnPKkkNbDNBz
	EgsuEBIrtu+kCNP5fzV7XF/m14CuYeudBTdVn300=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648999498;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ywNYBM2S02N0I7Bep8GHOli6Immrzf5tiU6m628u560=;
	b=I6fEatpTc6ck1bPLaIAU+O9BRazzb1efLuUorxW9gFY+/l48B+CqNzxBHk/OVw2c
	RAwmdPMllPa9kcG4Sqzgr/6oIMD1I7IXWLNfGYDa9r7vF++sk2sfMOiWE8YRHmZXpDY
	Sj0P0y5RxEZCqhO2Dbm4M3RD4fYk/hKr3d634A+U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff00781fb-8d465801-73ee-479f-8766-2a1d42860917-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 891555789c7c712613ba735ae60f90691bd90feac487462362994da057ea2bad
Date: Sun, 3 Apr 2022 15:24:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648999498
