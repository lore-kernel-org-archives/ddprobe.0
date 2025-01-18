Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40CD554723
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737228954; cv=none; b=h6B5dlCbzgHoxGTQQNI6BMhu1dpoDhWTYQ/84sPRXjAalsU8d6jFVyW1OgllwTtN4SR/gKlnJ+y23m/K0zB5SwUy16NhbujbGfEptlhG8c44V9mWiQ3lHQ4x9KStv9JSdkXauy3s7HRBq3qJyHE3bjKSEg5V4Th2Phnz962xSUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737228954; c=relaxed/simple;
	bh=IDJ3o/EK1vBTerjB+7RKf9XKkfub40pnar3idSAMxHY=;
	h=To:Subject:From:Message-Id:Date; b=eUmMIQ0LX+x/aF2HaTdjVQ0h5lBXLcqYX89T5DP6nDT5ajQKfxof32RZAsCSy1sePeSCsp0nrqi4VO8kD01bpn6PUDvXDzacmLyLiBTYx58+IHx3Zlq4W+yjktfDSj/X65h2w5sS+FI3OoS1e+Knx9Lis70ke1erd+JTXoLmRms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BKrpXpP8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BKrpXpP8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5208C4CEE1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737228953;
	bh=IDJ3o/EK1vBTerjB+7RKf9XKkfub40pnar3idSAMxHY=;
	h=To:Subject:From:Date:From;
	b=BKrpXpP8pFBnir1+K07nDP9ATvNpGadGiHXKD6Q4QQGWxtYumHEEWtWOhq6T123uL
	 8FchIP5FE5Z3FmEuoKac8m8rjCDKpDNgFJDNRwzc/eYMzfj7kiJyac/AzLolpvwDmr
	 c0bUUe5Xjged1e1pOHpIdWxSnuQBMrywCEA6rl+Ci8pX9UNgJgnBeRrXoD8oxhtMur
	 Wqy3jEWWGJ+bCY4b9SA7Bx7AYx0bSddwYEqvfuAewWAe37Od8KXKEp/pfNR00YYEOB
	 QggCVzfnIHS16XQwd9C/Q8GbVokhBTUbVGKlXrNIfWtDES94U4GcFNdlGxKAuN053X
	 5dhRuVv5WPUfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5B0C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173722895357.24046.16210066779204541818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 037640be6eb1b6647f13b1be28a7d2a0cf849aae9ff14a5567892489238e8955
Date: Sat, 18 Jan 2025 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737228953
