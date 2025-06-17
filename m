Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2667C292B5F
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750156794; cv=none; b=and8DJjqK7BR2JTjBtmom416Bmoq+zcgvPRsfxGAti/XNUUxUG9Dr7M8NtrW0mXCcnUSB+H9Ryok2twAH2AFbhgWDCq9ozMuf43Ie3zZxlcO29lmVepaNwc3ElwuQNov6U/oSH2mnH+74FG2rrIuRRvjgwJBfYCyv7tVxrHCNMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750156794; c=relaxed/simple;
	bh=fx4JrECp+s6r9VdiP/dEpoROSS4YC3y7I9uDEBLV+pY=;
	h=To:Subject:From:Message-Id:Date; b=uPRed+ssk3g6kc+CGtW5Ocf5HEg3+sLuYWEZat1u4Sr2sE6NyQpRLRfdrM7gd98PhFREE6goknL+ku4QU/Dz6MJ6/cCIfMcEffypdYhSuD/2D3aZBevFalsFM10bO4sjXzt8Vo37tJOX3etjk/VxjSJ5gU9jGm7HxnvDJB4hx7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z+9s9x/1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z+9s9x/1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42B9C4CEEE
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750156793;
	bh=fx4JrECp+s6r9VdiP/dEpoROSS4YC3y7I9uDEBLV+pY=;
	h=To:Subject:From:Date:From;
	b=Z+9s9x/1RBNB/o7EjBPMVzpe2V/7kmMlTaNfT84Kpzqa3oz7ttsqGasan/GEfaC9w
	 bztshvhkJmG988g9zZI5nllxTjzA5YgZpqT1aeiNX0D+BTgEeX/4EGqVFFOxud2k77
	 NZlII2ytFxOHdv3p4vRee1pfQbKdyRUq5TmF6yGEVan8VgyJ+/kA+8qwjWVS0VGlEy
	 i334nT1Mm5ZrcoipikFGxhnk/vzp0tYJyjrTAKF4Lya7HCQD9KAf96hV6RtUkKAngc
	 /zpRUD9wrEIJoOK0AR1dCWuTmUlBuJK3mE3nbDSH5L2Q2Uxs0ActJOmwYxgWovvvYU
	 hQcEEFqC5puTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D17C71136
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175015679358.3415.4637455762457016053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 859327573892b026b6f50531a9a1cfdfa6ddc0c45b142078ea5e51135877ccc5
Date: Tue, 17 Jun 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750156793
