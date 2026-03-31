Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E7282FD69E
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 15:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774970694; cv=none; b=P92EBoIlamGjg2dyBFGN6zoQGkLmXXNUdj8xu9mhiwn4t5cG0QOLkM2aMZ+V6ONfsplVg5BkSWFp5KX7+UiolnMdyC5w000w40wWgvz+dtwOj4lxSp1wezBbk2r0LeQnZfqqyuxfCyDfHai8bAs6jH/Bgq0ykCusoULHcrMqWxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774970694; c=relaxed/simple;
	bh=Co+3k+mZk1h0kl0wT20B0zz9DRV/dnQTUGuOUi2mG8s=;
	h=To:Subject:From:Message-Id:Date; b=H7Osk7ELLpy8rf7sUzro2M0p+raqKCYfuSIUcpPx0d6h89N8mDjtWlsDq2QmskcDkLilAXlcv6c1Vx/BMWKoOT1quFhFwPhtuvCzDrlVl8k4RkU/DFsBm9w8TsvlPwuoZoDH4U8JmQJXvUtMdHWVeXpNiAKZhfrc+VGwmyPUQ0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qJJye7PZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qJJye7PZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA530C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 15:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774970693;
	bh=Co+3k+mZk1h0kl0wT20B0zz9DRV/dnQTUGuOUi2mG8s=;
	h=To:Subject:From:Date:From;
	b=qJJye7PZOPu08E0b6vrjnDVV3RW+FT7DvwwhGH96nV8D/rHqe6X1bkTSh0CbiY3ik
	 qjEcNrXuNimgci9RWB7lEdrHgBbdBQ6mSX7bdri63XY7yXXO5CTivXrZYzsVlL+/tI
	 9bJ1q3Zr2tHKYsUrcuxO0rZ+BqqB4QJNL8rptCmpS0GUTCl+ZojIxHVPk1W1jlT/Df
	 U+an/kAq8TX2IYueRbt9JVlNn6hftZH3nMjqsADNOHF/pgeMFB/MhHXVwmF4KonJOL
	 9akie4IkwcR7l7D72hCbFD5tcIaVYCTy/nd8paviALTHLAZPjWZCT5Lf/C2i9J1qiJ
	 dOOcisI3FIxeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ABB4109B48D
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 15:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177497069362.26256.13528910464179382925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4acf40e79c6df507933368dcf5cfd83dc9b27c29801ea462ad081fc8ba14b91
Date: Tue, 31 Mar 2026 15:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774970693
