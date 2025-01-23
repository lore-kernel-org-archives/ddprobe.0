Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 614652AE6C
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737654354; cv=none; b=VbDy13MK3S7moDjXXXurLsY8zFsS2zcK+UcBuZCkOERKR1BcSDB0t+ZJWNvnqpi4FuLDinb4J8E79hpnRjaOPCwF8LjIyYuqLlrO7HhZASSF9hNGboHdQJhlRREVat+vHr8pE7VuISzKsSA2seQhtxJbig2mTGSUscYj/5pzxNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737654354; c=relaxed/simple;
	bh=/WY6Da35LmDU1LfvoyZpslkqQn9dtoAWUEq0NKuRTtQ=;
	h=To:Subject:From:Message-Id:Date; b=AtEhv3EttEAoYbpXMuNwsw6R1T0rYUG0ctgWu3PBKvbR9oMg7dmVTorJObFetWyQoXz19FEx/F0SsF8JyYpT3avM/ZxzJaI0humBhkwseEtAs1jwWPPHsZcc/TA1reb5GhpotUANHTG5wpSWd+oOtjllO+2JpIBomzNG+lYE6Ik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G8MEHoIH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G8MEHoIH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5EC8C4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737654353;
	bh=/WY6Da35LmDU1LfvoyZpslkqQn9dtoAWUEq0NKuRTtQ=;
	h=To:Subject:From:Date:From;
	b=G8MEHoIHQimOwWsub2RNatDdoSqFmYoGU0A8n2HMbTqb5ZlL33+OZEYO8xV3GS0xy
	 D5CPszQA9E6hcwT5IyGIR/H4u0K3grGSpviEoo0Gq49kxFXuu+JK8+sWg5Xm3CGtOS
	 uwtjWNvQi5vlbcoTJuUU6ZzHmFGYSh8K/ljz2KiqppIbPvcTKCWBSkgPiHd+NuKHmq
	 nsJ7R1CFbGXpuh7V4pyf1GPs7Wkg2JY69Kd+SM1ygk/V3eYdAOP2PQLwnQHg7zZxqd
	 SN1RbpY68snHp0rsnU+D3QW2nQVtYOgfsa/MERP+sXjZDjaTPRVkJrG0xgRPK3tXlg
	 4v0nLAL9lIipQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B71F3C02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173765435373.29806.1738530520348660109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1763900d93339b60b223c2e3589c4a801552b78108603688d76a02934d9cca1
Date: Thu, 23 Jan 2025 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737654353
