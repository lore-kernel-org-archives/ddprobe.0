Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26BA5272E7F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749080994; cv=none; b=OgFwFOHvx2S3ZtvnuaF7dlUc7+gx5qcv54uf1pSCJiepjYNmo13sQVBCAGKVKSFYFrud3tKEAprKsCI1PK+qDG9dcOfwiXHV2otZVXzvfRH18Oejzpw8cHCJlriNbxZOrIG3bvSVi5zMRGNnSpN7j4Xwy+NdsbvibdeIwos1hNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749080994; c=relaxed/simple;
	bh=9IuBROITW5UDGuoHjAJ/w9lcgbz4U1R6mH68oyJ9kGQ=;
	h=To:Subject:From:Message-Id:Date; b=DKOxK0HmcSJ9jJMKOkqcmcqJt9sBNakOwJyW5IPEJyuk5TN9kttks6BSAOtjrkSH7+tAaCMouvmBAu/b+13xwdMvexI/QQCG90LnNAdPzsbJagxWJQ4NTXrqoIDu8KZebiN6Pp+vRe1QkopuyPUNjgkXvWtlEXb/pu8wQElkLqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bpX/V9Rf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bpX/V9Rf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A153CC4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749080993;
	bh=9IuBROITW5UDGuoHjAJ/w9lcgbz4U1R6mH68oyJ9kGQ=;
	h=To:Subject:From:Date:From;
	b=bpX/V9RfRMUFLmXd6dXISwDXB63TZXLeQT466pbldT9QoZoDIHCs1NkjAo1LcLBaP
	 vU3h6Lxc2WO6ucLMqfGeuJn+mjlo6YuAx4YfCtfU9TQ6DGaVGrXI519PDVqV/H8H39
	 pJtaPn5npNa8AVYi0ugEiqChJuTxdFuf/GbpZnfYbyJJZ7hAvDnPfS4naSxJK8slRr
	 kNCpOao92BtgRIHaaHcJXYMy/5skCJv9XE/6ZnB+ExKdFVwG7+EP0j2EYqb2Z6+R9q
	 IHqkcZ0yrv2T0rTwgmAy25PQlsgJLst5A1VJ0my/zFOIbOPINhzJwN1YXrG/LKVDA3
	 kS1jKyeplKZQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A36C5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174908099359.3170.1656338995166779765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5432695cb66f01d48de4184c5042578257d6ca3c65ec65cc920a937d52e2fb06
Date: Wed, 04 Jun 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749080993
