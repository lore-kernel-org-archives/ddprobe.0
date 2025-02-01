Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD111C01
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738372554; cv=none; b=P0YhZZzjy4rwLYa7UpLq7QqWo3QpYjzc9Zdp81nbcqDFb9IuDxkCvyRI7nPglAycs1JrgZjOQfEJ1VJtn9Kf2p6owag14AlSzzmKW0bWA9CGQnADQnTYP59cX76Zc9ixGkre8qnyHdy75ywBNBooQtikMaXhZCcK4EU/cTnQ0tQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738372554; c=relaxed/simple;
	bh=N0ymJ0JzqDWrC2sxsDyKoW3smg8UCZtq+gDZTnxzUBo=;
	h=To:Subject:From:Message-Id:Date; b=RPhLa/QhLE17mzuOz/MVpisO3+fyzHtC5NGp2/1st4A/RLAqZxFOY0KHIPmjWXojzFk+WKbxYVs1c3+NVJfa9WLxZd7k+7sZ49lirpwZAlRXvTk/RT1zXqECoYbic6AyNVTbneGeLycY5Z011Em1JynCMQXJ1Z+Vp9v4uviMfdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eRfH40Nk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eRfH40Nk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9353C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738372553;
	bh=N0ymJ0JzqDWrC2sxsDyKoW3smg8UCZtq+gDZTnxzUBo=;
	h=To:Subject:From:Date:From;
	b=eRfH40NkZ4W+O/6c2ykEDidbRmrWOZ6HkzRix64ym71T7hvbZXRQiFChwW3L8rvm7
	 dXFsr6Hdv9wGBI3ABxjyaP8ajtcchS3aTEGrbj1QeNNY7WyhZbpXaa3u8Xfjy0Kerf
	 X04ADOkEeIRWVNgaFY7++GGi812bSp5Rh20Gz0yujX+dz1Gp1wHRaC6ihUeRPcw3RG
	 AukttUteOrIGGjSe5nv5SMVPqHHtRqpo20pqYau9jk/Gx2jFrtzCUZUFet0SZmxzzO
	 92Rt9jd0m8EHG1mMumf0ETtGOrP1lr8R88N+cUPRAXlh9RwVZHi0myw8hOBHpOKXFg
	 BfgyV0GMM2z2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FE3C0218F
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173837255359.28295.14074312948560963810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cf5fcfeb692fe4d664d722d3f6db90dfed1679107921947883edd8d26471223
Date: Sat, 01 Feb 2025 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738372553
