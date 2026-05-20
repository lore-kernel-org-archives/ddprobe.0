Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3712A402428
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779302434; cv=none; b=KDyaLJfgSW99s29loPyOkEfy4FJo2cx641ajkqWVwgsmtWf7yIvlhfNXI0Bh8j+hSkj+/5hsji1LESUoVT7LKPPei+f1Wi0j8lVCh+fg3+0mb1KP2OaB05SuWZ5GfDCZFZJ6I5b9KEI2lTJGZRSIv9hj1bUqHlS3appSxrYTxso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779302434; c=relaxed/simple;
	bh=he5qA/2EwkzMlww/jhkFQrV6qL6fYX+GJMdL7O5T3Hc=;
	h=To:Subject:From:Message-Id:Date; b=ZmIbC4gTXsn8/O+kux2TnVlemEdwUMAAcFxkdltwE4QDWfFXHPQ6BSJzSu3/nPrxHt9JjVd2SZz3j9vZ+bGyLKoUzbhVcDXG9BkIk+1Scp5wPGUMAqTmJ5+GQ9yaytrUIxUwAcRPvKOOr4hoaFyAUBbhzSBVBC8dGaKxXuLJii0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z6+Bnoaj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z6+Bnoaj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2DFBC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779302433;
	bh=he5qA/2EwkzMlww/jhkFQrV6qL6fYX+GJMdL7O5T3Hc=;
	h=To:Subject:From:Date:From;
	b=Z6+BnoajguWulZgHztq1MJ4h8E7eeU12YlNmmIRKj0tBeOU21vp1lbtvRF2Nu9kP3
	 I8Lm+tlBcyLc3CTDfst5alnWDSC0EStJB3bh6Sy9xX0Cpcpa0aqbFd6sqQuyc3maWK
	 KJcnqkfJuv/cUUhANXyekImWon2cQoWwyrjo9JQT8SnVJnhOftD2VJWRHai488LlhE
	 AvpWRZjXs3c/EoPIllLRHw8hVLoSTDvmHNPCK+0comukYJ+hibRBqn6NnvEWVLXbnm
	 rZbpaJ9KizGcil6iJSXPEOF5zRspHymJs/4VgI3GZ5Eg/58YYbBygeblpByb9JoeXi
	 WZty08myUouhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1251CD5BA4
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177930243371.15154.9265053783658886218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ced64db21d672e8fbf8933dd6c154680f8caa2e13876f30035d2bac593a45cba
Date: Wed, 20 May 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779302433
