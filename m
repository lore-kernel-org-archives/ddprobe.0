Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 191DB331AD3
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758100194; cv=none; b=icfqYSK7Kq+ExxTVZJuPpkizH01ui7s8Mc3jdrdQCP4fpBCSSPbb4Eyk+k4tV4+5YM78OHNge7pNgoe6vBgenlLyE1bS+0FInNYDuUTmlB6K1RdCnSx0Fb84tydBJ7Grnxp6y7ZbBQLQQPS21aGgdSnQpcD8bN4WErwZzL76J3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758100194; c=relaxed/simple;
	bh=UxZAo2weIeBK7LUmZ2XT+EWWu2JUOsZE7Y/cKq7lwKg=;
	h=To:Subject:From:Message-Id:Date; b=WGbaIbhAz9Mt7lhkWAXX4QlDxQTWevtifVK5NvBnr4S7NsiJIk7qgDBGH7F/bO+xV4KTIrVC6/crVgGXJhG6krtN1sRwnzswnLR8G6EmM8/P4h+ct3uojDq5ESQs//o19/YPp+TDYWx66wueP1uFiw7VrLHSlm7JDSp1k2Xzo+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HQAyKpRR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HQAyKpRR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACFDBC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758100193;
	bh=UxZAo2weIeBK7LUmZ2XT+EWWu2JUOsZE7Y/cKq7lwKg=;
	h=To:Subject:From:Date:From;
	b=HQAyKpRRQi6mfNexZKRpw2m3/GTV5amMd7UKLWfXfpbPLjZxzplKU5vr2W48YeStB
	 2b5u+bieczNEw5LRKrxAtSCV4+x3jNEBk0y4XYOit3ibra9Kf3KNWv/FokQGwe2Nhn
	 36V/t0iEc8Jzk9bbODOQIbYfqDuaA7bZVr39dxwdinVDeYcyGKaKb6sggoZdoniJtO
	 X3rAtpm9xjf4ITuBNQUqfZiPUwfpNGzVAD8xhrCWxkb/wF9jHdqQs43FCtYe4uvFnt
	 SSZuPAkWddR1cfgDiSeC1X9w4RvEf5Yo+V5yGWsLq9yCDupDog60plC/X7FFe8mhWw
	 pk1Q4ej+2M9hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910EECAC598
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175810019358.18206.14601472419425741043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dd35632eb06ea7531983971a6d431dc67db123f0d9275d4e700415ee0b13405
Date: Wed, 17 Sep 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758100193
