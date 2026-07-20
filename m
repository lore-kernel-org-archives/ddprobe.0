Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E40349AFF
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 11:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784548714; cv=none; b=orhKB2XpeZC+2vkHCiJyi8/mJJWEPbCIWfX1N0jg1QpY08v9Ppo/JBgTrbza/7mX4yxMEc6NSoe+2XPgeLVcLQoTcGE+483wYmrziJYUgHvz9kImv+P/pFvGQvcJ8wc5hle7pu0C6NKf5wg4+vTr83M+ejeIjpxblNhf5TFwve8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784548714; c=relaxed/simple;
	bh=PFYAiHvjHX5I/3IHxHdYzap/saz8+DPjnJRT7IVC8ec=;
	h=To:Subject:From:Message-Id:Date; b=LUaEBPoGr/lNddwqno0P5KPs32wWiCxICC3uJLsaD4k9oaIo2SFKCUkkwFelkhOHOVQuOJy1eUdaK181gKUDBViiGCWUdECuupQCjpHxaUWmbdsu+ncPuzxIoRgQWX44eVl6dF0i651toqTUv3vZ9JBGTq6ptxm4eb7efQCwEyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UtF7S5Fj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UtF7S5Fj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E22C2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 11:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784548713;
	bh=PFYAiHvjHX5I/3IHxHdYzap/saz8+DPjnJRT7IVC8ec=;
	h=To:Subject:From:Date:From;
	b=UtF7S5FjZYVIUVUFZYoWNLuVzi7F1xjdJt9qg+hBBkK9roPqMed3MtRWJEd3cGlU1
	 zBgEtVs2U+bUlnki+8lRjdxpFPiO9EdfhkNtajh/ilYuP00bHMBihIj+zt4hcpjd76
	 lx0rBVPK9EhIvKqtNeJZ5dks4va9mQ08UEOKtEiPh6L4Btp5ygo8A0pdnMnMTmrAkJ
	 RLXFFJKS7SSv5iwP9XC1DCh0EOgedE+ZD2cqx0IQNhPLNlRvlXvympcrvRqq7E3Jst
	 Nrs2wKRTgTiRi+H+TE3Fs+fj26duytHq+x1bzp+jyO9UVV2gwjqeK+9LvTkzFANG3J
	 Vd13IIAx/5YhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA672C44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 11:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178454871369.8335.7221823534767282000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35cdf016f914b49f0023fcbb392d414894badd2c849cc849c6d23dbac7d71164
Date: Mon, 20 Jul 2026 11:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784548713
