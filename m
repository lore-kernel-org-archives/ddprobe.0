Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F641AF0A4
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754714396; cv=none; b=DLxrw/+SQyI/hhZB3wMcstFjo3zf0ZHQ8LWGs1PHBR1rFhFUXHqBFXEzHG9c5eQ+dd+XD4jRzdJH2Lu9p99YT3Pr0L8wC+Q2w9EZtzFv6X18z5BCqrwLhHERA03ZsRoWBBlCj8q0BmcYOsGEcePb6VrmLIAneXU1YDKUSjp+/uI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754714396; c=relaxed/simple;
	bh=LfWFehE432pjS7lrvkmdhlMqXbYftuyXrM7WXW6QCkI=;
	h=To:Subject:From:Message-Id:Date; b=ihC5KtBZljGYMqr19xMa9iBwCim9oEkd0YO5yKh1FhcxMI6ZoKqhc/YEG3AUtK7rq24fSPzqBZAXRbTaPCwvDtFvaAGwqWNThP32tyuDqCYlpb0488afvK5wOjbWAE7QEV61HWA248/yhKUrqNXEqbh3cvITy8/0PlzNPMWm4/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DpjIRlHN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DpjIRlHN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A3DC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754714393;
	bh=LfWFehE432pjS7lrvkmdhlMqXbYftuyXrM7WXW6QCkI=;
	h=To:Subject:From:Date:From;
	b=DpjIRlHNEffHwwBuwvFhu3XVOcU0hRws4dtAlS96U9ZcuRo+Zav6ijwdcEcBrwMm9
	 Gfr1P0RE02D0c7bow2Ihhi68b3J/FveTafunG1XOWgLhnTyMiX3agKP5eBc0hyeYqU
	 FLNXuzocgyE518BPis9S8UjET7Fa6265XF4BYqcgXK85INJLJqxb3bzx2ic0KSYssL
	 vQQp6/tlHiGrhS2A7vkOprfGWCcd/P7tTD8Q8eH33ttmr/XWF/ZicO/Z1x2IwOuaHU
	 JZQg1HPzUlDPOIawYNXJdBaUvxtVNeL8lk8E+sEXUCTF1PH08DShKZIBMw0jZAte/R
	 gOg8Ndr6Y7xSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92448C87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175471439358.7172.4456413403365031230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 037d8ce1ca4524f6c6a4f3fac6e065dc54f40177f52cd47714b3fe3e79778282
Date: Sat, 09 Aug 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754714393
