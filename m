Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 118A726CE39
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769687034; cv=none; b=ghSwvYRzYa2tZnkK4S2+uCG58YdhMx6Bf7adYrCU6eiBQrOK3yJa+1d+dstQ0BI8LWsSVBEw8JA7emmYjzVL7PStTpERB72iYVNs1mLB7fiVKUHT8BguKrL3bLYe4NuEvhnI9U+ZBRIp6pQJGPXIEHtH4OduWcDtjiNcXlxy86Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769687034; c=relaxed/simple;
	bh=PnYsT5AbA783LIiLRzCvWWVxD2n7aAP7y7pdL0I9ZRg=;
	h=To:Subject:From:Message-Id:Date; b=t4z5iKh4ySO0rBUBmrsG7JsELLW5H4h9aE9oVk/3O+afBFbHtSa14xkA53UvVQC3zlcO0P+GwwegKtRbruZkyN/J3IOX1Ej9oa87JH9JmF3goAV+PYlCoH6+0OVy4/TxS6CSQq5s7FOWNjroemhaVXmULgzHpb50gmXLpAhBBBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pdiXyHqp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pdiXyHqp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3162C16AAE
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769687033;
	bh=PnYsT5AbA783LIiLRzCvWWVxD2n7aAP7y7pdL0I9ZRg=;
	h=To:Subject:From:Date:From;
	b=pdiXyHqpXhhLJpNkt3r9GBQuRO2pQ43l6KudscOHQX7MzvTFG5Z0n8+/btfNQ9dnO
	 2kAdly4m4zymGNwqdn6AKKPL1pV2ZX9DpjFf+eqo985t+QjNlC4IHRt8k/X05aURTB
	 aCvNkt4lpTWLqAZ06plQRdY/LBVH18/7CYhvGfDrKREf5U/+1vH+o407tBTTLkAhuc
	 8LqG+FoPdVIWt8FepgEnlaaqCXouJ4sSCZJYVPXRFuv6lcBX2Nmsd4S8r17t+6MHAc
	 N6p44Ct5dH/atDeWBVn9TjT1V7p7E7sYpasZkxJUtX+8Fzz/RoyWpt5iljMYhf2tOB
	 zJFfEVqXjOVhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A86D6100B
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176968703358.24498.11904325419924306871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba109b3738878d6887dac5f649284007bea523fbf595794188e1ea1dacb13e58
Date: Thu, 29 Jan 2026 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769687033
