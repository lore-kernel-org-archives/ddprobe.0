Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46337632
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734906354; cv=none; b=UqZHqmurXBpGA4n9W4gPwDbR0Tr6qhy9De3G7XR1bZ8lnGUBiOZ7N6oWc4fF6s1YDadzIbhK8Hl0p0ArP/J8wCDmW7F0KA8dqqitbBcKFOxdsgS4vnoGJZEkYBLTc7rpBJz+XLiwYDUZ8Rl2HbF/I2vA7BrUuDmgVFg7G5gTGi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734906354; c=relaxed/simple;
	bh=fB4kx7wZiGwCoM1dl06KMPHX30lxDfHryzJWvJpGjRM=;
	h=To:Subject:From:Message-Id:Date; b=NWFCUZTBbF7M+Yv6kEjLgCLZU1Vc62MWko5bzcHvF9I7WswKmTafz19+ahECkCIYEBeShLsUtJlAKoUY7cxf0mM1AINCuwGw7++Eko93qZs71r1a5QVA8QvVWc78e1Vp0ukeNk6Fk6P4yEbKkZZmj7f9jKgKyvARtRW4Lg5CfkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dyp5V9xF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dyp5V9xF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B30FDC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734906353;
	bh=fB4kx7wZiGwCoM1dl06KMPHX30lxDfHryzJWvJpGjRM=;
	h=To:Subject:From:Date:From;
	b=Dyp5V9xFHao7dYThEdkRigAs8Hdu1lPFmNa/2fVFN2riNRhqkQglKVLBic3lAg8Rv
	 UTNal+Ywe9TNqExqqN4WnYAT2wgBEK0qbBUCac/5Qxb+kimbWqBmvl5idbcbvRQWxn
	 hToeaYX6J3D8n/e8HX4qg3cmYA86rxnsamnzBDnpj+RR7kPq8xe1brTR111i7P79yp
	 z6wLOyGjqee4UbfpJwCmK1Rdn5NRAMORMSL0ZSPrzbQE8Ugpv5Q07zd3Td1S12IihO
	 AEIv1U1FbkyKb0ahvdYQGyO0JbbIU5Tng+4rWK9hZjFPIbJA9hDniR0qaAn4t6Ns6C
	 N2qTyfVRACPPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C376E77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173490635361.2556.13653874292389691530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 574d5c9dc9e482274c730137ceabe0a232ad0ad93b885a6af10eb19d42e2bc93
Date: Sun, 22 Dec 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734906353
