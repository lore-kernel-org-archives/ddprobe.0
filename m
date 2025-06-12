Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2846B1F03EF
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749751794; cv=none; b=hmk3IJRzp+UBWbYvPD9erbs5u0WuhPu8RuPEU3mcLfr3hi341OPadSCw+jwG8oFvHRpOtgn7TRwtQ9H7zvopO8SmcdccM7eNqjrgW+SRt4/EFe0bFrVB08huImzfNTtzypTi1PuCKS0Q4cimkCfwI+MRBR2EHwk+NxDThWvoTno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749751794; c=relaxed/simple;
	bh=f1iCVMpFuRVIBtkBDGQVJot84lCplWqcMDVKZ8s1K3s=;
	h=To:Subject:From:Message-Id:Date; b=GcdMxPuQCwcpNtV7KNSpnIIS5uQtSUPslZ/MlJFV1Yv3XSnfhcD8XMa8d4NCEfBVgXWqBR0lhPfMBhyJRb6AT9523t3mkzfCuiLiIzKtNTqRu0HBGz5Ti/hrD9B32Lata1DRhr3GLP6d0jH3CHFBYCaEu4+T8IoUONhpmwnJXEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J4EGmOjZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J4EGmOjZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A36C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749751793;
	bh=f1iCVMpFuRVIBtkBDGQVJot84lCplWqcMDVKZ8s1K3s=;
	h=To:Subject:From:Date:From;
	b=J4EGmOjZ4aq9hnap2HyZ0vUah2gfmMa0EIoL8OOcJ6OycHM962IMCwj2f5jBap9sz
	 sovSvF836G635YeUZAAad3sxV2wvBlkDllXjBHVMlHS2rHyyTJhFUfCD/m7SRhl7Uu
	 BM1sT0nVGpdt6zyYnfvwjv99+8yVQ9xbAjZp6lVPil/gIFpSSag3ZbfJaWKK8+Y7jn
	 ntXHIhDxt/QADRXswUpqnBvsGkXPC5QgOc8OLzs2LzfJwZh/YnSQcy66tBAwQ2fTjB
	 tQVrwIMdJAkNZEhbQD5DkIdn4bnjQhx1fXZZEhJd3/kqLPJpFYNjqLmOya022OoOgc
	 4hpP/linaV/bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9623CC61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174975179358.29966.815694324247949113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 545a6ce287d5d19ca3b927033822b2de46591fd22494d013cc2cc5353d8705ed
Date: Thu, 12 Jun 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749751793
