Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3619E42A80
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742353794; cv=none; b=Yl+tnqF6iDPVWYU2x15jdusxusbqKYwzdzhlLo/2OIuCQRsw8pG1UfDlU900ESX4gUp29Y9ib87W+iN66wO5/S2SEoBumaSKBE+7sibz9MXFhl1vcTRh3Kc7HHt2750CZaLxmvrqrYsB3AZxwi7Zb6G6ge7w4jAppLc4FIAS7Jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742353794; c=relaxed/simple;
	bh=fLbPj7PJrg9JpdvzAO/xeYjwMmNIR+eMgW9silwxwoc=;
	h=To:Subject:From:Message-Id:Date; b=sFPPUJB/nGuP6S6+KZCfgUpDOImfGZkm4DzSra5d3nM9/dkuLfOoyCFawYW1bbcNSZZAFGpoa1cNbXDrJRlHF9E6e6TBeWAjDOcMfdStIg6VIiTBYQi1MF7G6hWftKyI9ceTrW/ykJwDUU6L1ISrF8sThVWjk/c01S1jp9GprFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JFui7xkd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JFui7xkd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AEAC4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742353793;
	bh=fLbPj7PJrg9JpdvzAO/xeYjwMmNIR+eMgW9silwxwoc=;
	h=To:Subject:From:Date:From;
	b=JFui7xkdvxTxSq3TOwC2KQ7PWOoRSPXGrJauLymUmvlRToETVIJM1HBCHRxm8cRUi
	 POZTfONyQc9Ezzd5/61J1qJDTYfXKyWtYroHuHIwFiYzhmIq0GSHnyPbgHxGZMdJCv
	 D7+++GF60LEiMCo+RaQh/F/WT+yrGPRkx1+1rBykDp1T2uW5s2Kw6pNVxW0L6A/aJl
	 EhAgCsG3sGq2KV2SPSEIo4jXqhLUC8odNdtnQDPxNdy201hryPukZuwEy844gjx9Zl
	 UKW5/OFKNkP7YvtUYoZaEq7xCseKBaWYZAuUtvr8LsFUrYgPpr03heT+DVbFdvQzyO
	 UD+3qnb22CXag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B770C282EC
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174235379362.30959.9039218121735874192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6dd3a12e594232dc60308e37f6d594c36781b7eb6956828d4df919efc9df9aa
Date: Wed, 19 Mar 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742353793
