Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F18A9460
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762115994; cv=none; b=cIqaUYUy9RlmJhR1vs8oL+89hvjJ9AFugCfjnCGDswdCwGxkGCPM5x9B6WHJ/pggqODCVFop3w47LRViHX/CdVe0Q+8u227KHRsloSR7cmf667AYSffUbJV/oUgQ45eu3R0AbGJp2lBQKmC4Maf7H9jY3peXaiRmKR+7iSRwkhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762115994; c=relaxed/simple;
	bh=wZZJ+x72NOsWUcJ3SX3ALAq3Ry4rkOd/dPhNaWQDhHA=;
	h=To:Subject:From:Message-Id:Date; b=hawbl/zMriJXAMIB63xu16g2c92eTA7V18mV2LjBl7BQJwpzAU2hJu5MDLU4wWSNl5Qv1h+qSUrJZ8iEZ26mIwFanxCeE0gOaegCZzg+Vwz5d10y5hGK+X/kn0ydlaGDhXXBtxy6v6XmQlEsCaGTRh1arB5CukEoUk7Ctgr3Lhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i2J55bKL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i2J55bKL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E7AC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762115993;
	bh=wZZJ+x72NOsWUcJ3SX3ALAq3Ry4rkOd/dPhNaWQDhHA=;
	h=To:Subject:From:Date:From;
	b=i2J55bKLbFZr9lvog3iUJcC5Gkl/9d10FrvFF5Tx/TWDLf6GdAPYY2pJW5HcTC1tD
	 KbhG3ymg+oP6FeTc0qeFVXKBOdzv5VaIy3FyirKUlRhy/lJ+EaUSAQ4x7MOw8o1FF5
	 elwA3mylrpbKO3QTX+HYDfYjxu0UxSKZeuD8JDcI3/m1Zn3iBFTgiXKwJpwO7YGVv/
	 Wq4Wxog3GFaI6ygaU5eHE29oXBzqVyNsSXZeN10rk/Q44H5wZTLfscfcx7bhwLXGsR
	 MMRnCkAT3OVC9TN69wt8kCe9wOJODcpuv4KCdrF1KdeYUD7vpFiu7rfoNj9kZu9cTE
	 75th4h5OrkGOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94839CCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176211599358.943.951302039060588845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a711a4eb4892498df51c8bea1de53210d54898a7c479460be46232d769c3dca
Date: Sun, 02 Nov 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762115993
