Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29CDE3264E4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 18:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779994354; cv=none; b=ot97X8I8tpFW9M32L+vZzJY4ZMXC5O26oTvMsrsi10Hr3Md/RWHJLvd9ECYQtqWOvlt3TH27ofc/yxfHqcabqKBt6h0w1FPsaR9xVxiUPJE0XUqiWeCE8f0+X6iaDAftOTevH6+ua21IFJcO8pkjn8nJZgQGG8Xh4sqgJvqHjRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779994354; c=relaxed/simple;
	bh=6ZWWTmt7fqMS5mLly+lDr4CXmxAjg83CP+X29P3/S6E=;
	h=To:Subject:From:Message-Id:Date; b=kZoNJEm+D5q7mAvPLRQZLJsW+3jNGDTQQPY78j7jToaDVTDD4rdBIH1fJjylwdQCBVx6NN6KSztVL4UHtwfRhbY3fmePZW/76TNxTbf95I/5q6VkAdEMmfMxXs+ldVMagLvrWHHQYdZjZxhpnx0Fv6wDzKPUzepOUKixLNLTFSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GFi+/BYW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GFi+/BYW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE4FEC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 18:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779994353;
	bh=6ZWWTmt7fqMS5mLly+lDr4CXmxAjg83CP+X29P3/S6E=;
	h=To:Subject:From:Date:From;
	b=GFi+/BYWKJyBLJI2pOnIq5jQ1Y3QPKrPgAPzmjwVs6DCW+mECca9Bz62Q4+qS6c0e
	 wlwXajkgyj7FJDz/e0+kXP3cH1mazJ5/1fPAitopSeFv94UZWLY2gcDvg21ZSfWCRz
	 0CZztzkRgxabq2/GxKem7TpNpvLfq4P1zym5Gh83Z2eSHmN5fwcS4jVvKXCoPZhLcb
	 JBR6lA6r04phiGWgf2ZsC/V5rBQp2Vew3gem8s1RhSHAwmJwE+kKNyW8OiKIB75qej
	 0cXrnhZADEegA//OjJLtEWnyxg2kxg13dNBWNddISPFWpKeMFnD1+HLdsMY5EvsWP9
	 HNBnAEXoQsP1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8789CD5BD5
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 18:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177999435368.1233.2696906267326246671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 150b936d5c7cdf3077a7e9022431200a76f6df44a36c96ced5b7d878ad15993f
Date: Thu, 28 May 2026 18:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779994353
