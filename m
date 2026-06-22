Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C67227603C
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 10:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782124594; cv=none; b=BCBap1ry0yc9YK32EfMJ7Aqedtv1wj4FQYvDVLfwS/WALeVpk0UxTpmSdCm5o909WyxgBaAz7D/q0I7YtP8y9gx3p1wjy9Q04S5Km1SO/JTF1sLNnK9J2RMRw7OBegGdprAv2TuQj7bBV1fi7KSAm52edjs9ZYOb4cVjX2bpbcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782124594; c=relaxed/simple;
	bh=KLvJdhYrzUiK5VmKMTLPjBM4trIyFwP+YTuwRaG7E0U=;
	h=To:Subject:From:Message-Id:Date; b=QbZv2Yt/GDdrhWsVywZ+1bqQWaSGkyvm1BNCukSha0GbkbRMes4Na4gkPS7TFeP5CsTJNb5XehUmziE1pnfh2aqPjma+4/ISbHnANcQIkknmRe4vK3e0Af29wUx01d187/8oVukuzZ5A9Y5xBi9LkTivc1ru0HDaIJBlIJFQPFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jL+49n4j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jL+49n4j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 21259C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 10:36:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782124594;
	bh=KLvJdhYrzUiK5VmKMTLPjBM4trIyFwP+YTuwRaG7E0U=;
	h=To:Subject:From:Date:From;
	b=jL+49n4jFCELqmNkv5+Oz8OzFi1O/gqvEefPj465AW1uGCXZeA1SLsV2IRThBoEsa
	 79LDofp3EI2qr6WSs9qyP2JxhdPfXh8gj+RSKFwq276/I5zY11Vxx3pm7nB7lG+Mnj
	 C8341IcMSSP7CNUQkjgJpEJosxH+pjG8OMVVxJjcOC0rJxNxEjZwoL1m3ghuXY2h8s
	 KHDHxEgEW03+3CSLW8qeonTslMvikSH7yV491+ffb84SRVzv26WLkhXPy3HbSRdhhd
	 flVHnG2MkhYPgdHjDZ+kafK+kv2S5fO/DLrAjVc+CXqT3xnmW06cNW+ypqpoXBnqlU
	 tNd9ZXCxXMYJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3877CD98F2
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 10:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178212459381.14653.9149164920647224475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be352e675cef61d6cd465490494e661c34d2860303f4df8f0e19866c25bcb09b
Date: Mon, 22 Jun 2026 10:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782124593
