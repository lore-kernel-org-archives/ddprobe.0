Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 455EC3717F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 13:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714829543; cv=none; b=aMzQ3amL7jWqtkDlCnQ2ggIYeUkQQvkS/NTkQsCXdrarlaYVqdSio1+RQ5zZ8YRaSmQ2C9cIrUCkVIN/OgMcwWHORaX/fGw9jRVY3jnDdDuZmrV83ImaAEhw/vUKsVfycD46TmcwYIEUiNzRDw2jthvFYbyzQg8Lrs36xHecvnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714829543; c=relaxed/simple;
	bh=QL1l6V7rVqKjl/6sQF9URMzNXCSuWGBRyXrv14OWmoA=;
	h=To:Subject:From:Message-Id:Date; b=JYwni0a89RlslLmdPvtjNHuB4yDdUMlw0mCZjVmuCFildp5Hos43nok9tybrkW+TezS9riD6oHghYkuDVPC/LxYDx7yVw9AdLmuQ37bAJWK/evZAJYGhlru0L0iZPTVXA7ybG3nVdrVlEqgIiH+U7wKNIgt6cBEizUQ8ehQb/e8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e2tL16qA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e2tL16qA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9DEEC072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 13:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714829542;
	bh=QL1l6V7rVqKjl/6sQF9URMzNXCSuWGBRyXrv14OWmoA=;
	h=To:Subject:From:Date:From;
	b=e2tL16qA4SMRppIXFWz0eN/Y+jX6WLeS5OMdr20EmtQ/W2uhhq/e0ZEKh28FnxsbI
	 sKhqKanixAifNKm6lOW0ZLjXYBX2eC3Dn/TxUgL0G+H2IxB1sA2fEE4n5WI8Sc4oVW
	 LI+ue5CfVdVIPBjEq3h4gNJUl1R0HvIL4IS92hKwLiJH5nfzBvfSPnTzE772lljZXY
	 0Vf3aXT/K2I7Ogd6CG9keZ1EhXZun7ayKmsF4oVPzbxhk16nDayGNzg2KacFqfX5kw
	 bnMuO93K1vKH7rziU5VgmaWJZ9tfV0qLqo2hHrjHevP8WLZ2GSdcNhqmtg1of5zwyq
	 Qk+MMwRsp6cQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA88BC10F1A
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 13:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171482954275.32398.12304174711484035895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 136800e834bba184ae447b9856a200056d1a191af83a51df649aa164372e5f09
Date: Sat, 04 May 2024 13:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714829542
