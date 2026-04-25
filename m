Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC09239E9B
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 16:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777134454; cv=none; b=kBE7agR41rz/mK3xrlQwD5ZypFpB4psSRRErWyXS+/LeHUjNLB5qs49zSXYnBkX6XalHJXXGVd423EnlZfRo5wNr2E8rnybpjUjvU7znpQBUyVRTwHmD20nWJKrHOXhx1KOSsEJYCaGgFrhbYCwa8XL7u65u08mEYj+ntEGJkaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777134454; c=relaxed/simple;
	bh=zdVvQkABL8I0aJ1AmCe3MxkR0SK84EKDCGAgGId1iY0=;
	h=To:Subject:From:Message-Id:Date; b=F2XSGMDDtEXtcP/9o5rHW9HnRxJ9pzCrKGvFpHPV6UebNWXO+zMYdrBSShY8haIX5/4et4E53hD9zRxvSp4Iu8l01jEtnZ1EH6bF535ZFKOY4VxYg86S2KKE8Xll2CV6R8BVDjK2qv9wzWrmtzHDUNLz2qIxzjn017jeeW5OZFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hJxeUADZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hJxeUADZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA888C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 16:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777134453;
	bh=zdVvQkABL8I0aJ1AmCe3MxkR0SK84EKDCGAgGId1iY0=;
	h=To:Subject:From:Date:From;
	b=hJxeUADZzBiqVjDrgZ8OpvOe1+0v6SwgPrcdhA3a546Kz8fvq2ZLgiXuxetSwWmLY
	 npyH1VhQKOJjju3JP6TjPIZFRVxSNe2boR9zjxuDK8L7Fg+QxvAiAOE95/ngTjvGpH
	 50VYwGvYr9wWKEwJmj2IJboImZPvMvK90jiFWFtdD2RFUkwXIu6RnpeKbIK5JT/17W
	 28d+kUnQL1ic/229mF3xhOG0TB+TvDZ4KWULr8pab9U8lh+Hp0utK72n4uUBaeU1ti
	 4jN8zq1+BOZB8xh2okOTU2YLU/NyUJgALQsdfXaX8vTz8tW75May4/FefxulApn19J
	 xQbrT0gXNIx/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A918CFF8860
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 16:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177713445368.29764.678624479397728390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ad4e01f573e12240c5261c656753463c025e210842e6b49c09cfb453da3407a
Date: Sat, 25 Apr 2026 16:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777134453
