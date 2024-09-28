Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C7818030
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727538954; cv=none; b=BkqZ8jYRE9/fBoC32tcq8FH+kOvFHvAIugtY/ylAfsMAQuQCE7bqeZROCVc1S3E8ox7FZkw+XT/spnTTlT1r2Qgf+k88rkM+fEvyCa7wucnFdZXrUnWRVo9vK3QDKKK0IDmgdoVMRc8c8uthgauW4I/nLWEJ5eK+4uuRViPYKGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727538954; c=relaxed/simple;
	bh=8Ca/nPxWPBQn51zq0ZG0uzGZVusswZL4Kva8sl8WHOU=;
	h=To:Subject:From:Message-Id:Date; b=b2iOPK/fU874eA8oerRb3vvtyHrZ6gClGz+8KJDKLgx+AMhlU5VFU2vJDjG0w3g+DfdRK8FClnl7BTF9cZ7zal2RVUrwJzpie3rAzq260q284My3e6kfW287L1Alf5yLBwS8a6Nn3ajGf8auNsc2luantHSgGHlC0xZC2oHvVv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I1jvl15g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I1jvl15g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3DEDC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727538953;
	bh=8Ca/nPxWPBQn51zq0ZG0uzGZVusswZL4Kva8sl8WHOU=;
	h=To:Subject:From:Date:From;
	b=I1jvl15gFCWbu57ck9xqtqtCYLlGzF2ONcVDmgnsuoMAUJ1JNdp4HNBaCOd1vGCfk
	 XvC9f+EzX5Mt9p+QzjFM4nn5b77OtEnMSOeV4lZe4y/IxON9x4augJLBN8ltSBTRuQ
	 FoK79Wy9t8anXUs3TqnxNsX+JrSGkxsS1nRbf9AvxzLnelEfotL8IDgHRls2WFdKmS
	 xRCA1LtNSE8lAEqjC5e7FwBv+DOzsqMHc7d7eYyh0XeV8f8cb0+8ymDhqerlLxQEVP
	 VzzA8QgQCrVeI9KnWU+X3CZD76BHJrbwq1TTTPktAs2uAba362YBAksveYk7Tn2v4I
	 om/pQswNNdkgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F25ACF6491
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172753895364.27514.2017280905055884030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 610368a61701785a773f109ccbed810d50a3f77ba5a8a32ec0e70aa5f385ae16
Date: Sat, 28 Sep 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727538953
