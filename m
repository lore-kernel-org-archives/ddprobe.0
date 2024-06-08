Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BC92ED9
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 01:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717808843; cv=none; b=exYugPGwOkWYS5z4iv12nE1kycDyJdG/pNOsk5+2CDPi6uXimpBU3ip40YhWc0HzE+ObkP3tk4GBYROMerOpnNSQNJ9x9iATQVbHVCERM6F8nWKQDy2ZqvrfMj/SSdT1O+7OUhemGxtw7uH2e6IjqJop6Bq/eis7DKDcX7+MBoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717808843; c=relaxed/simple;
	bh=x2NBYQR+3DetI+Pih4500B9fYt0Y70X0SkuVs7a6U8o=;
	h=To:Subject:From:Message-Id:Date; b=pTqWEOrVsZNiyOGBTqG283aAawzYh/Dn1cZOWE1CQqdCagAUgv4x4tDvgokax7kppZxjFtAeuv8MJnjwj4G36toF3CYqkuMUJPzx/msuuCaVNXkRZvK5/zlVyPgyzPttRre3k5+653HpgySia4bVr2o/nSl1HTH81Z2fVERc/4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lqxbw8kf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lqxbw8kf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 09723C2BBFC
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 01:07:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717808843;
	bh=x2NBYQR+3DetI+Pih4500B9fYt0Y70X0SkuVs7a6U8o=;
	h=To:Subject:From:Date:From;
	b=Lqxbw8kfxGC3s6XRwzqUVigDQXTB4a4Y63wyWwHojGseaSNewYoWDqFNA8ss1Yjm8
	 lDTISlpXR2/PRvYnWHgeUuWiUy61SGZ7SwlFfhfb8wYBgY4Wa+ryI8kd2uPssr/b8k
	 xhQb+2ZmKKjZy6N529TOU+NMzbmzZhmOLMBkmZaKOSIDJ3Ok22Q9P+rUzJViAQHQnM
	 hHoZGGyuCZwYcqb2mUwqfI7mPPfFvgBVarnm0PkkZKnJeJ5HeJF7kKbcTJmEZUJykk
	 jCXZa2Gk+S6MWAXDpKj6WZOwP0U3M/uy2QbMy+aTBv+/Vhw+iIeEO+3EWt0oHBWC1R
	 DeBGv2ruEeD1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2B39C27C53
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 01:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171780884285.19129.8953954561914805604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 084c273f587f737588c2dcdfacce77edb427323376e44b4bba6954bdaaed8772
Date: Sat, 08 Jun 2024 01:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717808842
