Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B65479D0
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749866394; cv=none; b=BEuukJz4r3iVJ4vljeQY1DNTJ6h3Vsju54T8mOvLBfrVYqW6dFy47PDULbbwHG/owtWy9m8poMmRWvx4+xt6ofyLjZ8tUAJkugDh4sHl3mUyAmrLIXSMXAvmHZUAHyPGsxluqFDX7VuG5Uav56WFJ14jZui1OwZ78uEV1FzuOnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749866394; c=relaxed/simple;
	bh=+owN7pHpJElVvQ6NvbVdd+6bg0yEvM1xLseepfTfmQk=;
	h=To:Subject:From:Message-Id:Date; b=Q52+pXFQ8EO7rMYTf6QMv1Z4N+IB2OvMb8KjnL/XyE8TzMRXUnfJcM1p6H3EoVeLx2wyKL7gtJeiqYOXdVTdooq7cJq5uwJhYcSUxBSZlPnDDgLMZIHp5GU+MaHrCYOq11zdxH1ve4Ocn7eSxhgxiznokd8eZKpz3geo2S0VDuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LnGH4OCU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LnGH4OCU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7114C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749866393;
	bh=+owN7pHpJElVvQ6NvbVdd+6bg0yEvM1xLseepfTfmQk=;
	h=To:Subject:From:Date:From;
	b=LnGH4OCUERg5A9VDRxXAuHRc2DNHrl4Z57M3Zf3H46F8ZbCtUWOy4HSOUQyVxOCzh
	 e34Ahagq749R2ZGo2AZClqJqYJ4Cysv7tSkUIVwqMM/sAKtfmyMf6Qv3wMo9R6kRn5
	 bc0uJnBqwLt53OL20ofQBcxmDQHCY69pl3RG2mmpcvcKw74fm2xYj0KPrACj2zP96y
	 Q/k46jp9aj0k0kIrciKuI2hRSuky4BwGBzHi2BqeUs4cgQVZhcpOhThmFDxNA7k1yA
	 RsJh+Hq3aIpVGIn+MnUczlBKtO+nqIfLYx51DveHcyAXmiJhXu/k7wIlydZbFdytza
	 ZdYrSUPf1Dt9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AACC71136
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174986639357.3754.12441544961244092169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfff29db4aade7b56c102ce49700b2aa39e0bb585e070a7b5588fcb69658b0ec
Date: Sat, 14 Jun 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749866393
