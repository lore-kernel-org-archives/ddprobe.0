Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35146231C9F
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766308434; cv=none; b=Pl/T7s8e54xM0FT60TvIVSkYTaJ/H/bFEsNvdsI8aWlJJnC/l9SCNi5jV1EktDyGNpmVADgr61YW+U1/i5COU1aIdr4B56tPxJGxhIGtLZJ2A9pDqzcwIBAse2dfQxt4Ops86Pyb1b87s0tCVAfLZvH99WuRz/sucNZHBlhoGTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766308434; c=relaxed/simple;
	bh=zIF5+eFL0bTb+hSF5eWRJjx+IIGCX7P4JELJJ9PIAWI=;
	h=To:Subject:From:Message-Id:Date; b=Ou5RYzlKi34slCxhcR7GIBst1ib5rziD5mXGpqB4Sxfw4i6BTLAf3BSYeGUr2uwdxRbwznb7vmA6MbP+TkHjqfvr+n/PI7cQcJ3V5XrP7HzNpn5A9h8YnQPmhKWkvHIRLUd6aZ2MKhlmbI4MavJdO+Dg1eFNUyEgJWnjdl3phoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eOE40NF/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eOE40NF/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A564FC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766308433;
	bh=zIF5+eFL0bTb+hSF5eWRJjx+IIGCX7P4JELJJ9PIAWI=;
	h=To:Subject:From:Date:From;
	b=eOE40NF/zwFA/bAlOEEKNtU1yh6twfjxDB6tHHjM/TE+jIipSlgTS3SUFMUBI8+36
	 Zgm6NCYvLQfLYI3SEKp+mLHnvXdAp46gUFcu8lQsJJAzSEVj8155AyMQr6xbPsb/8C
	 292z5P2aSOqV2+I+J3vbZ7ZDInZIR1VVxnmPJQJ5+LIwZu1XN/ToF9avxzX6PTAnlM
	 HHMaSwVxA/qX9w0k9gKLzEnoK/l1575Fg7u2B646N8yxkFi73j8+BoiqHa/V/ujyax
	 Nns4Of0MrFC5OqQM5q1QEC7vb5C7iriPF8KwCa4Xn0C2hOfCGmvpGcDR9CsoCiNOzf
	 HTlLXHOvrPTEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E94D68BD5
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176630843357.28007.1611247247284080859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dd47c371cea94038bf8449dfcfd47bd715fba32bf06eca2244ca21d10f40c43
Date: Sun, 21 Dec 2025 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766308433
