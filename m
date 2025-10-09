Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDC7B2F29
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759976394; cv=none; b=mQQ3SWER74D2e1j0dPwEpIhnukQFNuzD/tMqKfs7AMzrdjBQgTg3OKwl5SlgNAxR+TC7MOAk41uKrvLe1timXGvcFgY928IMjxDmrzE5Hgcd8rReN9pLioNsuctHFDMWJDrXJxV8Zemv9jB6tko9OiGnLtqnxRVNiuVZRppO6TA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759976394; c=relaxed/simple;
	bh=2aNMuCOtbhsJeX/TqQsmkphREWENGOtLyzO6i+2NF7M=;
	h=To:Subject:From:Message-Id:Date; b=RPYor+YEqufOMtGhH5qHERbPwNLcdyJrZ3Wp7/FNl5mLnVxZGL6xVvedDd0zFIgXAsixB3qWpddx6yXpm9orgk7f9d07Kefkl79rgfqTIuIeB99lxg1+CUqTmUlup2JgZp2TFJvN4RsqrT6T4bVDQukCZFQ8A/CuAgIlh0s0gMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EJubyusw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EJubyusw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70FBC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759976393;
	bh=2aNMuCOtbhsJeX/TqQsmkphREWENGOtLyzO6i+2NF7M=;
	h=To:Subject:From:Date:From;
	b=EJubyuswu8vqFH2c0ncQ5skhVJzTJXiYrcYNoTpTCoGj9yOgNjJvlt0sXc8gHhRQ2
	 pcGCdy/rhwjKiJ5r/wVkeW6NmRzZ0JcMzlL5PuXNOjWunMJ9hIrpQMl9xqlHrMuLvs
	 hJgXtk4IQb5nC3T2kDCO7Ck/Rubkk3ClZgdQ/mLbEqf5pZvztDmpcEIHiZ7B2c55XM
	 Asz/CrPh3jLqhWtx7GG6SUk8Qb9/eGi3i2SJDey3Or3ad6tuIeohcCOGBD0gymL+DL
	 pXaIwcFMYwmZleKIS8VJxy9LKluS4u+m3YDNiVRfmI8lKdu8duyAJSQSiSQT8X+wE9
	 N9HEvkl9DRQ5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DB5CAC5BB
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175997639358.31319.467745670706148207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 769a393089b6fe230ddd2a24c916a2faf579ad58eadcd49a05e8b31d82afd239
Date: Thu, 09 Oct 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759976393
