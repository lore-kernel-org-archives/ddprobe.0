Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A612EB10
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 19:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781466994; cv=none; b=ijm2QoQRH+R+efRw+NWHKLoMwjWvlNzUlSWHyGXhlKzzcEZt5cyWipnFKMop2a74+MmJbtkhzj8g5uZtTXnakd1RWV4wUPZbVFZY/qfVb33Vl7GbfiHORvNwpuJIYu0Fd3iY/7VIQODDWyiDr/bM6apQkMfgdT52HX4KljmzbQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781466994; c=relaxed/simple;
	bh=RbOHlr/1KIOw/Hn746vCgxlYIB+odoQJl+EYNQgbmBw=;
	h=To:Subject:From:Message-Id:Date; b=b6jOyeYRJ1Zli2Fj6OFcfiZA+b7SKoAQtLMJsMn2PJdrldQlnfJV6ZvHl+EPX8iAXOMNKHqYML5WKDLrBqHOThL7gADdA6MNpq7MYM4oEmKZ5LABkjWzt8pkGSUdf9hy7leUELHVw+KFmXvsP5eo6VbBw1H9r0qNy7CQn0BoQH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QTxsDSvd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QTxsDSvd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C41C5C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 19:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781466993;
	bh=RbOHlr/1KIOw/Hn746vCgxlYIB+odoQJl+EYNQgbmBw=;
	h=To:Subject:From:Date:From;
	b=QTxsDSvdTpNCTxxFNzh344/Oau4cDA70c2FkoGvPt9NnApuxTvNymJwquaVbpo/zc
	 0Y/Lk199us4EH7pjGK2pmpwgQVLQ7ba7mspir0D0VvB2C2Tkno4IZy5NiVXzlqGMLP
	 6svzjuI4pH26Qlpq03U/AJVcAQqQN0q5aTNbL9csLO7Iylt4LqawMAxawKD34QaUY5
	 /0fWyVgLcwxD74tjZRjo+mZrD0YlqbyUkBUKu9il01W5lkwZwcaJ3Fffd7O+FaoU6c
	 h3QkkdhUJHWclRajpcCd8SaTeQCQecpiN42Tn2VOaA7qmZ79tRh/0hDJBj7V8fYi4w
	 MV5zagwh9M8TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9BBCD98C5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 19:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178146699370.3422.10569643158236765490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43cd83e730849821f4112be077cea6a9746bce9bcb4f3f7f710fd5718b4e9541
Date: Sun, 14 Jun 2026 19:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781466993
