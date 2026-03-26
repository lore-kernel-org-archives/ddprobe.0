Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02613376BD6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 08:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774515294; cv=none; b=hk3l01/c77CymzZGNXFS5O24JM8ox96+1KyG/pKshZTH8rsQmMIgOQEwhYcxDHgNdYy/wUlDvxEwzvtAti+1aqjNPJZTdoIZ+eX25l4+S8KDB7/A9OiKEFYEnK34F+3j/rRlLnkYOtjWGy6xH/WTkW5of68HxHWRIkqDqpqrroA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774515294; c=relaxed/simple;
	bh=6SxJyLbJzjKFHHcZn9nEgo0VIAYgszjPuQ3b3D+iLcs=;
	h=To:Subject:From:Message-Id:Date; b=sIh/TLDA02hamtJzyQ+LfaD3JaqpTfzwbinRynqexh9ipkwsYwNF8/MV1UI2wbMxa94T3Xl3MStnueZGuR4zzBmzXo6yn5S1tmFDGYcND4BZOqNWrb49mTzozNaP8iS8198Zy+likPMNasHwut5cocTgPNOOPt0Lk5EfzfGqs0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RPecKxoI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RPecKxoI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FEEC19423
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 08:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774515293;
	bh=6SxJyLbJzjKFHHcZn9nEgo0VIAYgszjPuQ3b3D+iLcs=;
	h=To:Subject:From:Date:From;
	b=RPecKxoINj6X0ubjik0C+Ane+jjG4NMfJv8s6R+EyOONfpJkJRdp9B7kiJ07MYkwH
	 RsC6Nt//2fuIJGRytiL0GNQ6IM77l2hFVlFbDqTagZR/ivReoQ2FxvXZWkR6LqUUoD
	 5tkUj7XpAQ0cmkVWDu4oMU4qAa7JhFwRTNsmCrUjDo63gyGhSBiZGh7frg/dOiRfSJ
	 ndy6qLURXvMKDkesbnptju/ocO8zOSdYvkv0VZZ5ZE6GvKCr7lpsYpiH12x805qR8Y
	 VU8fj9Xj21LNe8Md7G+cK/eaayR20Ih+FoOTzWmSuGWTmXf/W1TtLy8oqxMyd9TvA6
	 ZqTevhu2dxOXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D7E106F303
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 08:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177451529359.31037.14390555371364792238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9d21e15d0ce9866ad6b2c7a25f00c4f521f5b5262042bcab1856d519baeafac
Date: Thu, 26 Mar 2026 08:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774515293
