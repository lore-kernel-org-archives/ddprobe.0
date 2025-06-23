Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2723A22FF37
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750694394; cv=none; b=mPh/on09Gci7wUlf3Jqr0XelpwWrufv2QKxk8HZKcIHtIiZzdEU/2BxwB+r4oifFgKe4jdvhX9Q/T8JRTj3ySyvip+/oNAIYVGXMtX8HVC+O22d9IIKGjlp9aUNqGxU2dAnfkwTo32GYPLXIVTugM9qbdGAZp9GtaGiAfuYdseI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750694394; c=relaxed/simple;
	bh=HTdv6Fz41FLTkNP/rc2dPCcmxIDyAAS3QJKTbNlrpBA=;
	h=To:Subject:From:Message-Id:Date; b=KoVTn9mQktyZ6aA3VXdfcy87rCr53sLrs3ebB4bVtTb2k67Eb99jSakrH9SRPmGYWmJFYheTSf6TletykGe73m2sr+nyEUCsVGNjZ1NWeCd560QzqBvAhBbo9/Jf3PCqh/WHJ/6raOP/uOUQRZQbpp5wjtsYbucT4mLK2aNtzhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gRKIvIfe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gRKIvIfe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E31C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750694393;
	bh=HTdv6Fz41FLTkNP/rc2dPCcmxIDyAAS3QJKTbNlrpBA=;
	h=To:Subject:From:Date:From;
	b=gRKIvIfe4qMwDPRH8Sr9ztqIKtCm9qk8CXNlcTWbVUErKiC1zWtBo/EFnjaYSmkm8
	 ZqDhIiATBUvFBElhPoWC+FiRzoWKzEO1A9Bybj1BK9VCnXgQvCUQXO/7Qy42RQjQHK
	 65mq1xeizDP7H5HyodlaVEXwo1aehC3PPnGIK2lHudZjPBCFMAgR6W+KmkLaVu5WKe
	 Xo8ZjV4AhJdTxNMXCUfZd6vtEdyEeV2kSuP2wHGiy+Jv/eRVXEH8b5p03QBkwVf3TT
	 7b2tjuXg2ZxA7cQkrUwnhNFPrA3wKrWppWipW1ufGmQZQohQlWYdq3UNgSvI2zHNmk
	 dbXqgDla3NarQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92047C7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175069439357.751.10871651044855048058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcde652f4a2e42f56f28698eb645eabc16b6898ffc7b21accf783f326cc20045
Date: Mon, 23 Jun 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750694393
