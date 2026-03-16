Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 070231BBBE5
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 02:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773626694; cv=none; b=RPsG2OHk4vLazZfcfFqNzLTTq+jGamAb8Y5YzlWSgH3Gfql9+Uc00cpIzfQUEGmkWtlq8kGZ1kQdV+2pj2SeZXJ2iXF7IMrfAKLS9KAe+el+4jLFF8/PDYWhNBVCKLQVYHxpECKaxPuMfX6R4yIQccz98MsfH8HLCCH2OnTMt4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773626694; c=relaxed/simple;
	bh=bwCFXzmM4OFX4eO9hO04gaZo4xVQ/sve+FAoHlCegkI=;
	h=To:Subject:From:Message-Id:Date; b=ZNAAqNsKJPqF3nDYEsNarWLp71YujH+UUrHP4Ok9ju9slwY9r4/VmMd8pjZMrKQpqmPP/8b3jhWpGwRrr+13+Pva1OB3/QU86nJUy34IR3dm17Vg7hIMlSfqspMDh/7I0G1SJ/ttiPE/30QHxBwf0zy2ooteaW3O0MmbG9dmTVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nAhY3x3N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nAhY3x3N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02C8C2BC9E
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 02:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773626693;
	bh=bwCFXzmM4OFX4eO9hO04gaZo4xVQ/sve+FAoHlCegkI=;
	h=To:Subject:From:Date:From;
	b=nAhY3x3NN8p9v4njUxbWKhO0gKtTVXjO8G1TgXU2/wZ+kNRWjptpMvHKmbgfMSiFD
	 2b5Ht7ifZVubJQ12kxB7dliYk7EjdV0LuQNRlqVGnAz6v0p99lVikRW+8oey3vvQH5
	 D9XRvy98nf1CcJyWXPblrTYyyyEZMxoN4Hi/0JtldzilwMHwJfwunceHH7mqAyK0ms
	 NoDjAg2XXaYPktrJZ+BnLrCH6QXi32ei/nagNzw6ZSBKqn5GGmqv8oEA69UXnIB75C
	 MOOmB1zad0s6+j2hbJv0Re8A55Ei5ciMVOtrpTKfgVUBV0bnzFRJKe+hYz6eGuMKEF
	 ZrSHaOg4W8BOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90835F30295
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 02:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177362669358.15722.3407745226860516910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb89775c7ea9f4e75c1d588607d826eddcf159321724b3a5e0aa38d4b113d444
Date: Mon, 16 Mar 2026 02:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773626693
