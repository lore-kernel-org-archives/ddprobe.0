Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275304503B
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752850794; cv=none; b=NDzLPC90LQ9vvVbq+dxdaMShVuOtNzDRSKbnhvNBqBpNnctOevl2xtl9YwkXZo9VIceG4wTaI7ck6gG+ghyrY/Yrjt6fPCd0R6r9wU9NJVC0BozVmASso76TSFp25rzQ3US8G43US2G2EcGVdlxEvSoIXKqAg+YTebzbt2PmJT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752850794; c=relaxed/simple;
	bh=hnrXouaYSlhQD7jnl8n3tauG6XKb9HWjbcGEs+K5wwY=;
	h=To:Subject:From:Message-Id:Date; b=oIWfcVZ4oKJ8sn5O/ehb/m8508I4tNj6QlftU/eMFQQQu/3B6K4r+GGEJcIf+D7nvEgG0DMJ7JFkHJD2wupQIKfdPnqYG3hEWug05N1Ug9bcmB0m12JuLOw8klI919Wc5gTeqmNkPjbeKEYETQSqiEAY1BjneeGntzQqUK31FdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RO8Cu/8R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RO8Cu/8R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C1AC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752850793;
	bh=hnrXouaYSlhQD7jnl8n3tauG6XKb9HWjbcGEs+K5wwY=;
	h=To:Subject:From:Date:From;
	b=RO8Cu/8RL+5Ohq44LqRS5Wvoe7UjiQyXDVsIYxTA03by3jsRG9acNV+8AQcBa2Mqu
	 hqrtVxlUEOTfPmIKIJn1LJ/SMRmS+rTkBUuR+hW5Ss+hAdPoFfrZ8JbT3OZVe3mCWr
	 98HEKna4E1Fz6GOT/3AStYER8qrG0ToxfEun055Fg2uSgVe+V/75IMe8PA2uKj+hf8
	 9VbvZW0kmNtoTpb0ZFKQhi0JE5MiCvpXR9DETFWE5TrkRUaw4hAkOMw7o3s4r9lmG+
	 U76i2jqoIswGjHfPeTpqjy9ZXmXuRW7+Hosnsf7S7ZhbkBw9IQ439QO+qRzQIeQ02q
	 JIV4DjmUQoxyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91866C83F34
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175285079358.22132.3788651084417422555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a38439ad972a16dfe9c662866be8f4ab17354e3a2191b5976f03409daa1491f
Date: Fri, 18 Jul 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752850793
