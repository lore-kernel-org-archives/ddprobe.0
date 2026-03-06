Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E38E2D73BE
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 01:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772759694; cv=none; b=Sv2moxQwiDQKo8iO/cvBOqAKNyg439U0SGI6wEMpHSzG93OwQe+80liIlY9vlaeCiebrH81U+HQrHP7u4o46B0GYW0vD4mxYi6y/FJzvJVmH8iJZAH7Q4tTgHWQyMGH2UqQ1sPRNU9cv/GRBeBOtT3JG8U/NpFpRL/wLpJJs57U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772759694; c=relaxed/simple;
	bh=GabsNwW+af5d2F7UWvLwDbFPoJSt/8RpHNbun3rb00U=;
	h=To:Subject:From:Message-Id:Date; b=Vtsg7mooEi0tLSe4jVWxemQP1v0rJjK3Mw8/nFnxGb7waMkbkv086ICzp7AgxGVjotrArSLIhSUeqbGEcI2X4Zt6lsoQqDaupGOt3AsakVjeXQEgswFSMX7vjr88sij62F3WA+kERoZPTyr2P/NBwg7ZDOaU/SalwiwEcp774yo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UPcSZJ8F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UPcSZJ8F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9599C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 01:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772759693;
	bh=GabsNwW+af5d2F7UWvLwDbFPoJSt/8RpHNbun3rb00U=;
	h=To:Subject:From:Date:From;
	b=UPcSZJ8Fnk+HEfRt5ld041Jqk3KjkWv1gAu+AKUvty/XLGYDWuSi4hLdOkLr+jzr1
	 TJ2C5cfmAirh0PYqtMFfwV5CpX6Yn2RPxX1kMvWx01yryVlXAGSyAIYrWRLEEkEzVG
	 qHa8NQC6aUfd8oSqQXyRUNbNbd/Lqqkn/dLVove0g5yzpcLsPKSWqaOt8vgoZW93X9
	 M6RWLwrIXyLfGC7GXKd7Wv8QNSsxKXIhEhUi0LcvZvKZqFHLQmcomuqA3Z4nOzXY4q
	 V/90dp8nTjxoY/+XeEOYcx0vdqykyvviXJIMPsIEn6S03lk995RhqyEWm8qVphJ1wW
	 lHDnSRl2+WyjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94298F513E9
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 01:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177275969358.28683.8918593638807501039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd9dfb51bc32d2923b372fa0f411896f8be247cef032f3a7a9fb9849104ca587
Date: Fri, 06 Mar 2026 01:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772759693
