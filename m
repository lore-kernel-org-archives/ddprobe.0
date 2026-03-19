Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2E1C19CD1D
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 03:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773889493; cv=none; b=cPIbkPv2YSNAw/JnHsacXlfgrpqwfQFe3jFNDymVtBplfC0D2qcL3ZSrIrA6uWE+orNs7CPrBIEvJqssLHx6675eC9jXQueHCL27Cz2+V9/F+pP7hzux+Wkdh3FuJMmYCqFuKtIFbdVP9URP7rAYSiBHeRgiX81ZBP5HwXn0JYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773889493; c=relaxed/simple;
	bh=JKBt+PmMQVaFaPF7C/lcBfPPcDNJTqeKWYEDLUW7CCI=;
	h=To:Subject:From:Message-Id:Date; b=PVMW5Mk0pRGl2jYzzNWQstPJkCmiQKoXaaOy30mmkjIGCz1cs4wNFs3Y0PltZ00oi/ci/0vYFmUUHvwvpjVuugPeaQM05v1SgnCUEfJ3iV4SV6ebYiMbZdBVBHVOyhB4J9j0lGhN9PVGX2Dif8TSbtHj2FyzZsyOTrXALOIrXyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B9vDm40L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B9vDm40L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC9CBC19421
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 03:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773889493;
	bh=JKBt+PmMQVaFaPF7C/lcBfPPcDNJTqeKWYEDLUW7CCI=;
	h=To:Subject:From:Date:From;
	b=B9vDm40LG8uqLxSjLh4XjDNcYJ8zxsH76LxciHDQpidyC4Ncu0h4vIxcqm7vkVXu/
	 8TVz2UMc92BcQvtQtRrzgrcmzji6FrIVG2z+kvXmb9c6KxHNZkwwaNsa/MBqSfdgPY
	 jE44zXjLE54ZRkjgefStR1E411IAAMbGK7LhgmOnaGGg0JAtQt6oBGytOFl5KWp2sB
	 rWnAwQ9bazro53ekKBEvwO6ceuYawNX+lv++ZjHN1yhVTW0KHhAQEu8POcCHCeUPs1
	 1/0xKZ+7nBdKpvqeb0j2pYfVC7nAeIY3WM/OzC7AKQ/BLLpIP/2ih4k6D5OMWb7jvX
	 qp88aiG6pRJqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FDC1088E6C
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 03:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177388949360.23365.9533928904424831163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43a5beaa744c4b432b3eaba32c858f997b060bf4c076a36eee58258be458a637
Date: Thu, 19 Mar 2026 03:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773889493
