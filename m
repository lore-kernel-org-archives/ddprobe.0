Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D5030E83E
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 06:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764829974; cv=none; b=De6r5VClZUHTFVpbBDyb5vtS5UF46YbO3eM+MVT6DtXO+1Mt0gnC3kFRJTrkFIuc0tlVoa6tt6UE4y5U+T3WuS+fjCvlNpTW3Lr1LAUfM4ivkt/9j3DpSWNu7IVL6eCk1YWRJh5A6PVKxoWjD4T4FZDKQsLHwIoNcLMeduR/UJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764829974; c=relaxed/simple;
	bh=TGaT0ipXpAoIGioKd2NETSHkwMzeok1SgU/Hpv99FUE=;
	h=To:Subject:From:Message-Id:Date; b=iwa5CW0G92y9UVuePDaa4uExyZuSM0R5R/V9Xp/CHzZN8a46DyZHwIoUZjhOrcs74Fh6vH9zy8CF8j68EExMZPN+u+t1N/2ezgceUEP4OO5LMIwwealbdhRgaiUwTG+R6l/QJmog/7aF+52vDq2nfgi1v8EHNdFgVIWcWb38l4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a3JYrEj9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a3JYrEj9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC2C9C116B1
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 06:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764829973;
	bh=TGaT0ipXpAoIGioKd2NETSHkwMzeok1SgU/Hpv99FUE=;
	h=To:Subject:From:Date:From;
	b=a3JYrEj9HkF43JTeGWtFlXE9N448brYnZCZUs2MeRCDFuhGal2nwpHKJr5n7DAlPf
	 AbOu+UwB7FngjfxxbHfBhaZxQp33zh92a75kHMLPV7uGgBFE2wMKEtpc8rDF7aF2dp
	 H2hLHzDCNK9fH5wFE9Poe1752rBW3F6Q3GLMWReZ2zts+S+SQojxvrkHux+VlNN4+1
	 4cqCdMB/tytsqwiJpQupG4Mm14E6Cz9PV7qd/17BgBL4Wgz+FRJjyopRrjMpsWYtQf
	 R9Oj9WbbwhWK8y7lsIvRthQwf/3NkHmoGweyuXWpWgSjwWOAuRcVWsFR89+Mn0m22V
	 r5OX77baFK2CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C2DD1D862
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 06:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176482997360.22758.11760432092496345489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5601e14644ac3a64b627bb01ce5384accfaf314429aa57a7ed1c6c47a1599f51
Date: Thu, 04 Dec 2025 06:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764829973
