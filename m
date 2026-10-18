Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D7443B14A8
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792356034; cv=none; b=G7Yy2fAaAXnkz9ayaLy83v3W8f221zqf6gf5YPvGNnOYckwNFOm1B4C2qBTBhaFX+lJpRpODQuYK3P3PQzgMErJV0JQ9QCIaLrYQvE+IjiITQF5lez+bYhBn0dAlp7IOKXbdJ5Y8Lf1/iGs0SP/OL1xMGEn3BC5OLg3oEXe8J6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792356034; c=relaxed/simple;
	bh=MffTDlYW0PNLriWuHQrLbRW7ivOvEjZg+1OTHvdUfFE=;
	h=To:Subject:From:Message-Id:Date; b=HIzJyd7PL5HfHAiZBt11bX6b+7D8xc2y5kL+Hs5pWqjiILewyfsvSgbDLPChSgSjK4T5uAKDFL0f0LRhO5V+Dtd2blT5Xr6C23RrGOsKFHSJdKcAz2iKPcHlyX1VDbzzRfAbJA1f10VvbtKamWKCT4K7w/3tKtapITCBAKmkA2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i2xIJNh3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i2xIJNh3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B36C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792356033;
	bh=MffTDlYW0PNLriWuHQrLbRW7ivOvEjZg+1OTHvdUfFE=;
	h=To:Subject:From:Date:From;
	b=i2xIJNh3QIkM+TSDJTeFoVUYsE220NLLkb2M2urFiDhTZiqxaC84SRiENjX+ZOk42
	 abmUEBONKU5G0Zzacqdvp44HR5O8Mnyf1qbaTCsn/bC23eDdGp44+5jfoFHafqAjjz
	 o7AAZMoY59ruVgpb0OUDU4x7Fe7t6pf46NvIkjwKHMA/RLEG1x1deicehamxvK9iCo
	 XutgJWM8jxENHW7BZrwnixT7SGgY4n85fjdOG8Oj+6negL1TrrQEjusUZOXDt8z+GM
	 zj3SggrxN3sv1edvte5lh1zQZ8YepA2wR49wJJ3brqK6ZOkpzrRZ5e3bJDnV3/1O+X
	 xlB9mj8iAbGQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF80CCF2C9
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179235603368.5746.862201592847040927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8f7a1f39ad41677c7445448c3e97d282ea4b4489443283bd3cb8f73e6635230
Date: Sun, 18 Oct 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792356033
