Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8C4036B05E
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 05:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781673995; cv=none; b=Y9r0xP6YcWzBjN5DeidZXgYLKtzQYQgyxUszigExQffO2FusBr9t2bL23EOlC3IcX3EdyiEJ8cVT2tLZrGt1FiqGnUL2LxMA+zjQWvpji/dl/hZzRf7GzeXhE15QwOcDO9yKB7hkm6RnzYf1Ur154pCb5aeh/g/HlFxeX4cZaec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781673995; c=relaxed/simple;
	bh=woPnBEXNO4aATpRJE1NgetRBsnGlfk9DM6EHDMtWlsk=;
	h=To:Subject:From:Message-Id:Date; b=RFK1oPmgXRnBi9c6st1ROcIdPY+EqrKGhEiNOOBlIiZ/ULffXDcqKJdCzXS6TnIW0iQUH/AvdB5JXYYc0RGy3KjkYhWU3L8/6HyV7Dkv9y0rKk32vlFtiQMb3p97YHbxSfEAWDjXAh2M2aZCrZBNEjrVw9ZjE4voOJ6Zaee+CSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RquSYX08; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RquSYX08"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 52BB9C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 05:26:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781673994;
	bh=woPnBEXNO4aATpRJE1NgetRBsnGlfk9DM6EHDMtWlsk=;
	h=To:Subject:From:Date:From;
	b=RquSYX08FTIdv1Lf0e9o7OjlrMzjceANe94If8q+HSu0JsLFTVsU5pn0+dDsubCLZ
	 ATz9Lj8REf9qU0b5PNV7igz3ylMPuNV34/qD149IPcM+hnxKvqwtnWR0AzFdWx81bo
	 OPy7HnpFVgn1NHr0mocpKZUkJUyckFYzRmxpjGyMDY2b8G71zvvi1XBQZ/uviaysLA
	 2IMvPvR77PxzDsb8hZlAjpBnynl7Zhmr6/6/k/s4ZyH5vNOnDPItcLWBQ9GBEoW/Bn
	 bz3hcaQKSzbvUYFcG2hTQJ5ZM2NWNj4Wh6BtxQEZWRKRC4X6lZiMSbAmg1uxinGH07
	 m3xwTvDFUO4XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC1FECD98EE
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 05:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178167399379.31733.15076658343012602442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d898737563ac4b93fb390ad26d4200b5696891556da15c7eba6b31e8e0fc8bc3
Date: Wed, 17 Jun 2026 05:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781673993
