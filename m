Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333A43655E8
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 18:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778869834; cv=none; b=SQBQx+ckm2MVPD1Odo9Eg1wG8xOBg/1rvbfwURCeRhAAn0gy1iDH+zRbDKsO+IaQFgwlROkUK8m16G+jkzxv1lJjSo9yShs27doe35s8J7OSAvqVwQfW/HvhHlZasEbPLFzvDzN5+h9c7rx5NAc+/Q0vWV5zo5wywbK1N2bx2eI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778869834; c=relaxed/simple;
	bh=hH58SBTWoxG67H7bgH1eZny/ZRRQlUaRJXzQUXDAmOw=;
	h=To:Subject:From:Message-Id:Date; b=o1G5zmhkbQi8JmXuyMOeKDI4X72d8oUWKx7FwH1yRTAfFGVjnUc0EAaVaDKiKwtKksocOn+zD8wwoOU0ghUGcCjmskZy+uQw0NVmjzBQEdPNzwbre3pTZHv3ICN0zJJ9Vg16DqQfHM5hPbD6Qn0daflEXVrdqel9AZTbvnPjAQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NbjIMAr8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NbjIMAr8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1DF9C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778869833;
	bh=hH58SBTWoxG67H7bgH1eZny/ZRRQlUaRJXzQUXDAmOw=;
	h=To:Subject:From:Date:From;
	b=NbjIMAr8dMbYI2SKbmWrMMcqqt4q4WtuFoq4Du8fhVpcutejp3oSB4lsV/DqIMwBf
	 nbnDMxO+4BZAHLuW9qgw9RsDLXa7o4Exz1Fz+aqqIEgKxTS4VOs3l/ScobNYbqADpq
	 5ymrj2S+2xAROYYC2MLoodxo+tbWZvN2FTRfrjxWlIpK6IgCn4o2JryfojQO1s1VVs
	 d00rvj0nC/rjFOnAJWz+4pC1UnRBjXkNNxuyqpbTfDawUR3L61Eq80HK96LZb2ltiL
	 7GNGPW0USDivFMe198LawL15DSo5ARlPWxdKOkKZmFjhxStnMGidaaRH8MJi1ZvjKR
	 vXKAYsG/F+XQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF5A5CD4F3C
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177886983370.29604.3850863641941638193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb0f8766ac498158c236eceb2b823c6128089f8aeed1cfa92b70ef96b73fde77
Date: Fri, 15 May 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778869833
