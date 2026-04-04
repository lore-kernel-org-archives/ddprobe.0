Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32021374E4C
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 16:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775318734; cv=none; b=q0XPc1SwFoOhfoFRMLj+DIwZxT7yK7AyYGGYrFfc+m8GmS3TX7CWN0lugEB+SuLdztYD/NKJC1vHoLNipTIaJbFhUyR1CJRxHkzY9UBj1RaVkaErrGjt0erfynL+8XxS+CkF4Tt7Kz54iPSan0nCiQy7nwLZBY8c2ff+X/p4Q7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775318734; c=relaxed/simple;
	bh=KB1lAy/Ki4yjkiy9YKTSu5lw4pKeOaRuZKIP3o8eROs=;
	h=To:Subject:From:Message-Id:Date; b=u8GSHQ9WVrUelBOelfj8Cl8fSz0NTsO0YQsSql3SY9erBOhjkM3S74NLmsSIqTTaloNgOBBxJYuznF0PwVIkUE3QPvjRQ+HZ8VlDr/EjiHmg6c22eif3HoyBgGWpr/pQ6ComRTjOxehOqL28S0pKHxuHPyi7qqRUamR4fGOu7TQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IeCpqqxd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IeCpqqxd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4D70C19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 16:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775318733;
	bh=KB1lAy/Ki4yjkiy9YKTSu5lw4pKeOaRuZKIP3o8eROs=;
	h=To:Subject:From:Date:From;
	b=IeCpqqxdWkYlXsqLPGa/EcQrtaoCOyJ0wq50v9+qqwiTCy22mK5sXgzVinJCFZfU3
	 hSHQ24InYndSe30Bs0XnnZXoPWDY5x95fVeeMkUNVGyFY6Hg1vDd8Rc4fefkXn63PI
	 YbvUyaXLvIl4jXSxsc9trRZP7icUKoS3PeDm/3KgOB0cgEmXvlysahtViPqJgxUuFe
	 VK+sK/0MzcnX4ntlypJ8k1Y/I+fZpffPpmGiPp7g4gww5mJvx45wZqzSUlAU3eBu96
	 nb4Baj/D+YeBVZpiLE80BUOGfNVlI5nsGQq4C/Q/+qzHTc9pyGKQi+k3DtbkUJOYlR
	 HKiQ7PoYgOjMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3308E8537F
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 16:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177531873369.1649.13926380441660321019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09ffd40519518c75ec676db1163bbca46e426dc5f9021973b5eef95eeb1d87be
Date: Sat, 04 Apr 2026 16:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775318733
