Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 106432367D3
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 23:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773529494; cv=none; b=GEyfFlARyDLgDXJM5HUkv0bzox3o3RnFswN/3KOiQxbM9qtjllRNUuFR9iLiQkqb/rXRWuts3m5m/7jZYJ25Wq5BF42T3vHr7Rw+BszTE4lYzCZU87VBDNOH/bf4d7Q3GIb4kIH3ftigMbNyOvt45sNODu4C4nRtK8AtYA8YxFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773529494; c=relaxed/simple;
	bh=IkTyMKm59DvwjEr6mz+qO9htBIrMNEh9VLeFc5ZNXGs=;
	h=To:Subject:From:Message-Id:Date; b=CzHLiJjIw+P9xCcnTiJ0vv/WDga56p8kQQU6lf7kv0TgVMPgBrh/gxj4Cs1/97NQx815xJq6WmAMgblfs56h3bTWVpyg/OKfLqKHSOcTgC9C2bNrPKl6ArRuBG6uwRR3c843ol2AopQqEcx2aX0DaGobbohLZ8MOJ/dskawA5Qc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GRit6DKd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GRit6DKd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA007C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 23:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773529493;
	bh=IkTyMKm59DvwjEr6mz+qO9htBIrMNEh9VLeFc5ZNXGs=;
	h=To:Subject:From:Date:From;
	b=GRit6DKdkqcyamd0diOsDKUoC6uEjJCVqHi+pRyh/UG7oEuYK4TPCp/+xDGtxg0IV
	 zUXRSEn9gG0F1Y5cX02lNznFnfOhjomQrHBnu8Rnl0Uv5Jg02p1o9bhTiAr5WcU2tW
	 BpV5rWav80R+ewxjy7A4DOv+4577YliSLlmreMybRNYRSYvPnO9VEg715hDE8yfQfq
	 9+HQnMIcykr/X0fQVzSzgdnbvem/+ZhuaH+33r8q/F6UHprIVl9Tgi//0H5s+9gaBg
	 nocY/lxQHPd0nqI4R54cA8G6WbmxgiD7pZIskolapAiSCo38b7Jm7goMG+YvdphX5c
	 E6TyUOlr49B+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9527510854B4
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 23:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177352949357.3618.5090415507791814024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dcebb70667925e0718ebd17208458dc053111de6649e7bba62dbef0e807f4ad
Date: Sat, 14 Mar 2026 23:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773529493
