Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E397F
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 09:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652000578;
	h=To:Subject:From:Message-Id:Date;
	bh=UZB7JBYC3C63OeqGDc1XIgHskjgL2In0guwvpM1MNGw=;
	b=ic3NxHxxAqwi+ceiSBkZepiL77OwyGhZGyQSQJvhDOwNVeKjt9+4QgMJ2FRSaTfU
	4Bc9l9OiRU3NMeMNMNHS/K53yWgbqI7Uhca+ezruSnwIGGSLvgH4lgy7zDokVwxiDGP
	C3saSUEEnRvXa0z8UBH0mbipfpzv68d7g89rA3Kw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652000578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UZB7JBYC3C63OeqGDc1XIgHskjgL2In0guwvpM1MNGw=;
	b=TA4gZbniQeT99UeI9+f6SAjBjaApTtemWCNcJkIC+P66tk+BTGiUj287uYMWBA0L
	CuheUkqPNHfd/0pXDtnYpEBs9F7Pp+L5FxZYxIhjaLzmYg9RUKN6SIfvGhpU8w80bxJ
	tfy8Me2+/LUbMgbOz9e1kHFsF+Tj5nwDb11Koz54=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a2e85b15-81e2ec58-e5fc-4832-86ad-0f6adebd21de-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 92bc07289cf2c4a48793efa901e3983de0ee37fb79839319c49a785d9aa143cb
Date: Sun, 8 May 2022 09:02:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652000578
