Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41BCD22DF95
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 09:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741770534; cv=none; b=C7RorlAG3A3FvIV7P2H0tp+bVKRQ5xYwSn9QQmert+oiwP94/WVLj2f7fEpA3/Y5cu+Co7yG1YJl1wierQsWimwvEh2JgVk7X3gplq3jx1cE622+Uj1InXXda9wo0c3AStvlPmnNLi9hTTCwRebneNV7jhgEo+p3rnj4FwTNVuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741770534; c=relaxed/simple;
	bh=/vdpSqHf/m5dAy5ld2gUaoiqV3cW2o07ZqoHuDD1VV8=;
	h=To:Subject:From:Message-Id:Date; b=cd+p8/la1ArLwj94oZQ/HZhSKF3uwQVcyYePyyunD7h+JvOc8XKhuCI8j3Zk3qr0Kk5VOpqpiZr8WpI2gC2HzBd0xKeRUslPY7QpYl/UW1RKANDfdf8iTBhr3e1LUzRNzLtZ/aT8jM+nZC8EnKyNO3zDLV+kYFdxn+GfcpSG+EA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZOQY45xb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZOQY45xb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E79C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 09:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741770533;
	bh=/vdpSqHf/m5dAy5ld2gUaoiqV3cW2o07ZqoHuDD1VV8=;
	h=To:Subject:From:Date:From;
	b=ZOQY45xb6A1rbZCb+sJUws0QKZ/fi7GbRuHYWDo1kGGj/Q+TYMLFL4871IC1aU+rr
	 YW0x34TtURIm8gZv2t4pxJIaOgGV1a/lVxO6BsLMft5aQ5tqWbdqhkgNcd3iWWZw5E
	 Q2ZI++wcD/w0RZYssOy2mdSvpC3ax3OG2TdYhXchoU3h5NQdTRp1Q3iegfEkHcWWvk
	 o+0Mg6Hs+uM/jamKZ0Nc2YxhPpvfuJbH9jY5IL12uAM7JaIJcaK1ETPw69skJ04Ov3
	 kESSSmxCFT2YUb5jq37qYmk+W3Xt66nTbE083yl35SkLkhMHkHwmdttsBqNmrNG1Ts
	 NdNOs7V76dFjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BECC28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 09:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174177053358.16521.7308206108846435795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6eff11df965482204ef16f47b70f229a99118384561aaa8205615bcaa1eedff1
Date: Wed, 12 Mar 2025 09:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741770533
