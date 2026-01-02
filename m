Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A38D304BCB
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 11:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767354834; cv=none; b=tJ47jVwYCbvBvvCf3Xrroe8L4QeDJKhJu9BU2NIxWHA72uUidbJYBGmNdnxHVpiLtfJfdnzu36+AYBifhFEuwxdqN2UoA0FYkYCyxHx1HlNHEzENAQBVdpLKKklwIRszGICCK487k5SJMA+Xj1scoxEnO7/qUiqAXiZJuS6Lgzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767354834; c=relaxed/simple;
	bh=M2nTn/M/T/ka/g4Kk7iP4yqn8f4iOi5l9zHpFQcgxT0=;
	h=To:Subject:From:Message-Id:Date; b=isFm5oY9VthYvHVZEtzpPOHRlPo0cu/fFCl4OpO+/kr0K5IgqvpnUHy30pW60R01Vv1/UT5wWN5QPCnQGvw+HUa6TVOeKXbe0xNaSVkUkBMBpgpBLc4jfoC4UN5sUeDAEiMAvWhV9lekzny23T7hnOpToQvBxWjexgpVXHRk4cc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HVNyydzU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HVNyydzU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02B2C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767354833;
	bh=M2nTn/M/T/ka/g4Kk7iP4yqn8f4iOi5l9zHpFQcgxT0=;
	h=To:Subject:From:Date:From;
	b=HVNyydzU2l6Xr2tZ2/G6CjHbP4LDjtfGZwGtDQULVfZPCvK3pev/HysWH2t61NDIF
	 iUr+Nm9gfoMQD1SccVgEiWnsNl0QPIZAAX4rpMTObuKV1fNUTvw7RXw6Syl1IkeGIJ
	 bG/cP9hjRfUGhfKubzaO86K6kafV2vAMhwKYaErGtgkwcLgoX8EV7HjRJXtJDr/xZ8
	 ciKVzk9k9vZ03pGVYYvQ8hz8cqPfYOsZwMCZ36u47KlXJSecJPvJO3S1mbIiHz94z4
	 3cDE9onieZj6Eo1XJWLbWLjYZ3Xg4QdYF4aiNcOTcqXTujEKwBETDxSowNMI7H7vla
	 pyAbzQPF6NOcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC0FFA3736
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176735483358.24038.13804128227356495472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb427acb5ceaa3c1ae3cbbf403d336736cb4416d047c63ff192ac0551633983c
Date: Fri, 02 Jan 2026 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767354833
