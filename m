Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 620CF548EC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 05:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715317943; cv=none; b=DMzcxfgxu9WeQbkY2FtvZ5ScB/b6N8Tj7HWM2Nsh1bZY1UvD6mBm8lePdVvuFQWkjV9Vs1otuPIpxVDULjyzsFDliwt7wmFkjb3HLmZm+hOOSl8bmYG1sq9L7n0jFDXKb44Z2PCLdc5B9ctw8sQzSQjWapXQxOr82dVc26K2/AM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715317943; c=relaxed/simple;
	bh=aJCtg+DGytz2s6FiFLJNvtp2FqkTWRtFYt94Jtd82TA=;
	h=To:Subject:From:Message-Id:Date; b=KWjYgXLC2ubRkNhQOOY3eAKhJEPmxzwNUOe9TrQkG0kvXI+BVS4UWmpCozpfkKuKCwojbRU9d0a9DhGSxszHWwxMEy82ufnqFHzEghypaE6Eqtx4rZ92KFOWIgh1cFcrmSzyHEVEVJOnqXLSOzVUhNVCjPYEc+EE2AuPUY0zQ+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o/Y0b9VC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o/Y0b9VC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E38AEC113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 05:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715317942;
	bh=aJCtg+DGytz2s6FiFLJNvtp2FqkTWRtFYt94Jtd82TA=;
	h=To:Subject:From:Date:From;
	b=o/Y0b9VCThgvN98lCBCWaOPKYQv8N6xaPOEmW7eZiLlx7lDj+I2A191dRjjH6AwEy
	 MCI7BoyHvHQhRPNpxHDwLYp4gAH3Ea1LLt33k4A3lZmH58TPQPr00syE4Nlnu4il0r
	 YdldJ4zzaPdzM99usN6hCoGUbTmZR/Nwo6JA3pHShJt9iJtNgNSV++9FuQWJas9T88
	 SjwDcTcgnUsiMMYF+WjYSOjur0ea/fzzi5OV/hPSFm7dAMXEcPcJP3RBahZiuLSBhz
	 yY/Z23aqx8yAVpk8nIfY/w5yct3dffNK1wtDMz+bArqhPOBCAUtOK1V/VuQD6fB5OW
	 /JH0Oc9u6EnzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC799C25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 05:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171531794280.31976.15991446794116766860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7634b431086501dd9ffe2b0cc0237c6827242245fb201621a86e4353262a575d
Date: Fri, 10 May 2024 05:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715317942
