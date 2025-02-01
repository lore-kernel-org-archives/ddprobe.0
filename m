Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C451C5D6D
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738432554; cv=none; b=Wdz/2d5sgAr9h7HiwAH7jbM92PhEis1irpikFd3AnJTZAC5wUQZuRrIlQ+8oj3nqZs7q/zTXen4eC3ldUVBT6pT7/xQPz/frUaIW4JpTVwpzLFJ0sBRoR1ZzgjBwizLkSXg2Ggh3YW9RUp6nLCt09HFVa3osvZHosZ6ks331vpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738432554; c=relaxed/simple;
	bh=fxVPrrt+uI92JdSqZNcDG7WmUna1yB8m15J3vXVOzUs=;
	h=To:Subject:From:Message-Id:Date; b=Dl4aYCNIGVkhBe4Vo4xj2wqcw2iaPVrifMi5cPt7vhibdjT3SSJ3e3tMYaL3wuWPru09WDM/GW/cyzGSSI/AWFdM6pWwnopDZeW9pfGi5ZMHGY85ZJy1oim+Sd2m9e2eFQq6zXmDvAZ/ErHhrGHjdVItP4DFfG1pYvbxMhgf3po=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tpsbKSqk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tpsbKSqk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC86C4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738432553;
	bh=fxVPrrt+uI92JdSqZNcDG7WmUna1yB8m15J3vXVOzUs=;
	h=To:Subject:From:Date:From;
	b=tpsbKSqkG6+cHRIoR4cbEEK8LN5LvyIIbzoDSmjipD8fO3TL1B+NFHWmjhN5RBNYQ
	 Gu34Po9RcY/+0XgNsMaPnXVQH9Kdhjj9owNvULavaZ+BoFxHwvVmyKON1lIlaBvh32
	 Bn0BqGXfJct07jPujcKCxsBXbYptqTv59cKkpkGGqfWYaCWAMQlcKNk5dtsIUsb5bU
	 5jFmqEgNCYeYT8evzkgwcRHNhILmA/VYnDA98m7OcX3CBGwq8tUTWRuCqM+7Jl8fsH
	 Tcw5/RAZ3TVmou3eOVfFqUiZCXgez9rABGN1pvmRlkSemkZ8X2YsDzEYFUvOEQPdrh
	 vozQNqTSYUs/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C7E2C0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173843255362.12712.3424927577405745732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88ddeb70b8816f119c11aa7149646c1295fad722ad00bd2b4e92508e56729eeb
Date: Sat, 01 Feb 2025 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738432553
