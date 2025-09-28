Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD35D824BD
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759096793; cv=none; b=AwVioM4WUg0o84AHWqODhCRpcSBQaVmPmjSmpNm5l0Ti08RIJ4gT4UtdHI926lm5QDhbj3B5YMaYT6N5k6MVgbdUCund7kR91HrEwUw7oIqDNXfLRy9BsMAlAnFmFoDVJyLvCyHmtKo1KYX97+x2UNlqP5sJk/KVHSppe9OXJrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759096793; c=relaxed/simple;
	bh=A6oYRj4MItl1DB90aZPqMnVfHoEGURQKjntLJDyiIE0=;
	h=To:Subject:From:Message-Id:Date; b=tJrfxTEHbgh2xszqR0GNKObQzs0MwCpMm0YtY5wuPK2uDlWpLau+aKsLwq6UMJqwcxpMGMy8Zb51vNhqFYS8pE+Bre6WSrZLBiTHPEiF0FfLikhgHxSS7xBMczUJBjr5H4YGS34p8KF5pvg4pMD/VqR7ze1BHGZaTN+gjDfkuhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lJdFvKm/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lJdFvKm/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5713C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759096793;
	bh=A6oYRj4MItl1DB90aZPqMnVfHoEGURQKjntLJDyiIE0=;
	h=To:Subject:From:Date:From;
	b=lJdFvKm/xRMewzV2iM23g1yiSbfyxkYEw/AO+3ePThumYJCDe5nrJt+JdHqP+oTzc
	 uFB6KJFx7hACB6WVz2oscJT6epxCHJDbr220XenzQqvz5jQlocJS8DDzpk12HzSLml
	 ebabMh+bRzaajahKSEUsACnuyCbdS9GXsPf6tHQ9gdxVjuIWufq5PyBp5+ErT3KCyX
	 B99rJ4qksro3DDSVY6j4KJEiufk6NyeIdLbIedfJqqf9xq+bWMsHZoviMM/K4USkrL
	 cVig7lPiy7e69KpmQ7a51cXyzaLoS56VudDS3YJiE4QbihhAYawWiEiIQmfA9c+jzU
	 lmZS9O4CDMo1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9400ECAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175909679357.13308.5060397110631110655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 656c426c3238eb091121804004763123749c8f7d5ca49aa38b2d9218fb8f2dcf
Date: Sun, 28 Sep 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759096793
