Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337511922FD
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 10:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772877894; cv=none; b=GEEBRYRvZiaWP5WK/leWuEAC9wsYnkCEYjGKtxvVqs2/M3QqoqbRwFkWJNdHZTKykLVZw2lrbHjFgSGJJ5nWeBSFM5QPb/yU2vkckyX16qY3YSuUeTSqegkmB+NWogBoJf6z/+IWDHtrsZmbEOM8dmqZGbC2n9iVK5QRjFGdoW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772877894; c=relaxed/simple;
	bh=tpN4In34ZA2I6kFjKAqFCoMk8hPeMltrMcYVGuNU2dI=;
	h=To:Subject:From:Message-Id:Date; b=OymNdzVcDk8MS5JAF/wo6ogW7wT9gnK0/cTzBqQH+d5JcuH4Rn/xi5mkGRTornAma+QmtA6Zofdc0YloLpyOqOHAR1Xk6RdQghI6SlbBa8xguuFoz+UjlcRqgONtjCynpPjEwCZ+gVLDS2eqWVXlCdMsAiMtgcW9n7T2cOPas4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GOtdxI2u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GOtdxI2u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA188C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 10:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772877893;
	bh=tpN4In34ZA2I6kFjKAqFCoMk8hPeMltrMcYVGuNU2dI=;
	h=To:Subject:From:Date:From;
	b=GOtdxI2uOr/bW/tyC0tFzMa/qkOqOyM/DQzH/Jgq6L/K4HFE5GzbcQoVzeYc4y2cl
	 mvuRqM5hkSwPFN/8vuQq+vsFZ9tOf+TqKqyiHDwDFGzis/QtSWrcR/w/e2wJsrruRc
	 QThZhU4y8NOq3Q6FhWaqSofW37sCt8/Z3WjOskQuzY4k4XW3hijIJbSGlMAzvONgGT
	 dGzTrykhH9psir7QS9cKUpXiKP5KH0SYOr15uc2sKrljdtSQ2iUXY4nkKS+1YJMQZL
	 TPWJT6yQ3TBcVSR/19QlbOFABa0ZHpYlgV+n0cpUFpLcdJLJyMmso5t61VZmNm6z2Y
	 O2aMBIxMuhq9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACFB4FC9EDA
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 10:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177287789360.29494.18380049973067065716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97a88b43a03239d8f3fa8b2105648b86b5d29f49ad6bcfc5e221121640664502
Date: Sat, 07 Mar 2026 10:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772877893
