Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0D22701D1
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756505994; cv=none; b=d/0Yjdc+vwQXiimbsYQGzyuHkNMs++f/zNv6pnMlyNKSpYB/avyF2MBm8F3rk6vLyXsUcRwbrSDT42Ttdppb1OK0y4gBh3S+TiwROEXZBzYOh0lRjEmfg074h6f2TSMt1WdFKR0BBhs0skDg5Rd6vU8sibsWiOZSKbLS4hVdUKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756505994; c=relaxed/simple;
	bh=Ml11JiahyGoj/Im9HZkiu+DXMGBZmei4MHZz9i88CSY=;
	h=To:Subject:From:Message-Id:Date; b=eqWh7HBabf0m7nSkPrqdtCStM69GK6Y+X0JIqlVENYZCbmNM4XvuXm7+SqbwkYCdkQ42rLCi3um1NBc1aOZT6Rc0XT0iVJuxDK1eFt7VcUx3ZrZfRYFxxRiEkEnhSMvMeH/qQF9vkHOE9wPLiaFWZ0rHIIscHe9bQgrHpybZo9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B84+GA+c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B84+GA+c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5A4C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756505993;
	bh=Ml11JiahyGoj/Im9HZkiu+DXMGBZmei4MHZz9i88CSY=;
	h=To:Subject:From:Date:From;
	b=B84+GA+cr87A9VRs3ac0NPrYv60ANFZLf+Y6xVLDswKcSYKhx2lxiRV9Spac66Djm
	 VX810ld4vELFirPUkMXBAuR0waryOXgpNz7N28mYwQqsetvewPB8ehJfo32Mp7z1bn
	 8Owhk0hRDO1YoYM9Ar3u7FMWINyQMoc8wMMT2DlmBj4VP7CPEkKsxRGyHGo+knwFPF
	 e9y8OKBB+HR4SCbXPsPRz+EGqQEwM4PZ1wPJHL+X6BzA1A0Xflnn1lcW6zwhHQvF1r
	 M/1SK3z/qy+Jdaat28cropW1YEMF2KMGd+bO+NHSiBZ0z+TwCdkNnQqM4LBiyYHe/e
	 6aT9sdOLn3hLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F64CCA0FF9
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175650599357.16648.17627320144152051431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e9afedff0aedf87bd375a708fceb2018b6f13e4fb772562b09cf6dd37697ef1
Date: Fri, 29 Aug 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756505993
