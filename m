Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31680161
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736467554; cv=none; b=gz3gr3Q4hFZG/pfhYqZEj2hfCW/YAcX1qg2kg1lYMdvpPq9DyeNbYbTo9A6lsnn/dNimeR9Ph4hsixGhw0JjwB1KAGYbvmHeclIkBZFK6TiQEYMS4Aa0JhbJ+Z+ZfCJoHxGbntQiChO3WhyYbN8gFb+nbD+Sky2jJRWZxm/x0IU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736467554; c=relaxed/simple;
	bh=gYM8oXjinldSwl6A1ZgkFxTO2QT86S14eipxxB5T5uE=;
	h=To:Subject:From:Message-Id:Date; b=oT71BToMVa9VJd9fM0fM6/j4LQowMaACfclhChj0TyJaUElV7a4U1JoXlhcZEkzXSjj6Ilm+422k38lBlUzd/Nf8xZh6Amc3RWZLrkRxkJjmGLzHsrBW0ohMuMcbrn1vuxlU4L7KUBoGKSQ+JhZbVkDFYufpZvtv3XZ8UusWSwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IPaMRTIg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IPaMRTIg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2151C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736467553;
	bh=gYM8oXjinldSwl6A1ZgkFxTO2QT86S14eipxxB5T5uE=;
	h=To:Subject:From:Date:From;
	b=IPaMRTIgiA7iNOnGPdjS9PokINmG94twmqQfm8BSTRbJ7G0KXNneOs/CYRMEJ/IPu
	 ACMoazSY5cRM1/M/gY3fgXQqrB+fEpMGNwbP9ZjAuTl4qZ2bSrRexVS8DLdS+5lVjj
	 6L7jD/za20o2lL+6ZSps4rHD/ONh3cvDCZYoSW4WMPkYjYqJdF0dbAZkvVFN7tZbfx
	 z4hiDE1hSBtSSele764sF1OJ00Bx7g0AZA3rZBB9gTuXh6i1fjPrYZGdSKAV0KS30p
	 NiAr+q8ttfy3NytZ7KWR+qzlGrrXoD2qvuHoRYvekA+rnEEVG86gwClC+6cku6X6Tz
	 oZ5Dols7ByJGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948F1E7719A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173646755358.23589.16605667491394201728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afa02cd7d1408149633c13d1e0be1018f4bebaae094b219112b044ffd3d16c7a
Date: Fri, 10 Jan 2025 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736467553
