Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39EE71C5F23
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759865394; cv=none; b=SEhA2zC3k1YbBSS+P7xd0rGdD6AebNH31AkNRlOae5iHohIh9Q8bAuugyNHQrwMv8uaEr1/JYqqPzkiKo6FWBuMneDP+hRyYPm5wygi5Ed1Iy1FZHPwMSFOzPNsooaB2DX+qEG1sTtek1vVtK75WTTkHeCgSz1NRvWdXoFl1Eq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759865394; c=relaxed/simple;
	bh=HXPkfdJQnyhgtNTN04ThAAIfxGTn74PhlJp4fEh4kPs=;
	h=To:Subject:From:Message-Id:Date; b=d3HYWu/GVw6cSq8N38AdPXINq59+l7Ib/s2EcSBsvmXEhQgbWv6lIdGWf4K90JKjYzoCnCoz/gv2OwexASWVpv4/Z0FVzRve8x1u7T/0hklPg6WXr2JuzYdTj3/4SwApI0wRTBqxbNpcv0+ycZFLZZaAtWkHh91Msr83pRKvsO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h16ttmQc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h16ttmQc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4757C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759865393;
	bh=HXPkfdJQnyhgtNTN04ThAAIfxGTn74PhlJp4fEh4kPs=;
	h=To:Subject:From:Date:From;
	b=h16ttmQcm0+0H+oeFPp5wWUnospxbRCMmdElp+KqwUU2ahu/eVVSo5vkv0KkY5Rft
	 yHUDboY5wXFUwEVx1dZWZdy+FF6rTomH9ZXhBrR3EtQyxAAK/GWLRGgfL3belx9Yli
	 Rl4bL+AFrurQfsrjsC8ZkQyLNy/Bmc79H+/r2KjGL43ZqXEPcGndVvo5TJdbXF8euY
	 A98yL1K88PixrAemrSpWA0p4nd6PWfoN2nJtLlE6qh1JdruPYfnY2saq5F0YeOi4b7
	 HoHo8GJG7Y7U6Ws652vY/3oPVOWMS2RUWTfBZkTaWWnY8277+5cUBQfcynIRNiBRlP
	 b9+1fP7G6ym2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9186ECCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175986539358.22017.4095467582084966188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79fc1e7d92e56484598b20db3722339403b8ae35cd825ecec1548007aa08f689
Date: Tue, 07 Oct 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759865393
