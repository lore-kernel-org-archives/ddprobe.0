Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 453E83594A
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787425234; cv=none; b=FrvCSuvU/8xDf9ZZ/YvnizcIIF51aQH1vwDbpRXz1ciRkEIvijnN/khI+aymDixZ0HL8SXTNwE949Ce95bIsQTu4aWsG2WnwqSmu9ld5SRBiOFP+RJ2iNOLJqnyey0ZV1ydE6mOZZSDcnTvz0YJinqs/RIAEl+8fNTmJcsjE7pE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787425234; c=relaxed/simple;
	bh=0f/a9FnEq9sqixXXWcBNfW8eQxlIPjJ2EHDXu+9CWWM=;
	h=To:Subject:From:Message-Id:Date; b=sy3qjUpz2Pb6IC+cmm8ZBcTvyKacY3wy2UClklNUaPGYVKT/HfJeHlQ67UQKy5d8K+8kzJhIbkwcParKyK/OWZrVtR8B6ZkZh2kjQpO/v3x/KJ+S24uZtqEya9RXmOs/4/CdnIvXdwmYnDvE3NxEDJFvaJ3Y4dJRHkqoWblicII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ht0c1uCs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ht0c1uCs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA0E8C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787425233;
	bh=0f/a9FnEq9sqixXXWcBNfW8eQxlIPjJ2EHDXu+9CWWM=;
	h=To:Subject:From:Date:From;
	b=Ht0c1uCsIfCXRPmRARqwqs7N9sDvCRnfRoeCfuDRChIOIpbYgfnrlBvoUVjPNZfYK
	 bi49k7J+BohJFQ3EgU8RJDlrzSB7ZqHyqxd/Vv0N5stTEOyqQ6XDaETU0B71I+UNNv
	 Up/59dLtprxQQpMg8ll37ubvh8RfQSnzQXR73UNwCCtaqILWYK3vHctYsyqESKXKny
	 zsSzJ2iUltrMyD9kQQNsboozoOLrDj5yFH9Ft7GAbfJ3NVJZItto3vLbYcIhs4UENn
	 /PRdw6hwSSJwQUYDigwJ5J+679fOS0B9QIHZ9KHLhAmthMMyeJj1nMJNVZsEFwzPvZ
	 wFARaALMPotUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEBF2C5DF97
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178742523369.25643.18067602391354161755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b45a4c9a54a40e867abfd0be7daa88947c74ff18338a855192073ecb64b07af7
Date: Sat, 22 Aug 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787425233
