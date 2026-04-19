Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD763C1F
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 18:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776622654; cv=none; b=kfTlEunj6zQNC4RKbvz4rhQWtBVRGK6vDXWwFyJMyG62Nat5G5Dp42DTv7OXf20jKnSqlPCd7F1A9iPxSNH6SMNBD5RSpWl9fo3G0odZk72CToygaMW9um4FwcTCKwK9EWNOWohYSLY/o1BKHBvSTsOkBhOAQmW3xgCwj2ghqJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776622654; c=relaxed/simple;
	bh=iUIDIhD3ik1x2nz4ixNn0ZYpgtLp+8E1HtJR/O8C8Rk=;
	h=To:Subject:From:Message-Id:Date; b=KL0oI/vLySk3azTZF9rZa6xGauW9n06NkxKshsfdlzyOmlWY4+CJ0VrvblFjd6Uax/kf8WtrzjOfzCGpZfP0lDqeEnOj4QQf7WaNlZ98xeSFZlgF5fyqDFh36ViVJQhHNcQgVxO6yWFq4mgZK61NJtB3lWh3/TfN/Uf/ShADc9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DFIaFjTZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DFIaFjTZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2553C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 18:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776622653;
	bh=iUIDIhD3ik1x2nz4ixNn0ZYpgtLp+8E1HtJR/O8C8Rk=;
	h=To:Subject:From:Date:From;
	b=DFIaFjTZ2/nUyMqLyJpLiadHqhfzB+Eq3xr6LAZCF5hDJO5MYDrEpHfGFwm5tjaOg
	 ynmj2++Bm1tuzJ9hlF1HLjGRjtNMuhAVJwKYk01FdvL5VNYxrXh0yow6NIcZGqJAen
	 gbY35m45FrEc27sW3CT7kJpJ7v7ubW+xzly73K4oDS8vVgFZs1dvFLbMlUmUohBJtm
	 XHEQuk7dInk7QKB4U64MFBUt4HPxsdiSEbzX4t+nU+bebRKditQfYaLT/cSGh7gir0
	 AGJtorghUfn92EPL4rLSAJsaxhAF6qf7BmQZOW0MwjPm3tycvnmIYab+IaaV4gFUMO
	 yz2GaXbFrt3FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBC3EA7197
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 18:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177662265368.27576.323662428841245160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 824e125f0eaf8642aeeebd1d52aed99c91531354cb009b5f080c6e6e64b3f771
Date: Sun, 19 Apr 2026 18:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776622653
