Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262793019D7
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 17:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766339034; cv=none; b=m2em9SMQPivx2SCPp19BZYXkJv+6FKCZLvUq/GcMg0F92632iA6WRaWD4PZmSIpAVPLA5k8qZ/8FSpuSeGwwlo+LayFfbXtrYXNohSGgIsxDSJUu3YrLS7QKJsRHMHDzVqkE24Xt7jYcuos2CUwqN+jYk92dK1JGyAWp/o4o/Pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766339034; c=relaxed/simple;
	bh=T2gEWtphxVg+IW1+kK9IzyKaihib/zf1ptYS8g9ZTPQ=;
	h=To:Subject:From:Message-Id:Date; b=TuS9Ia7xdkr43vQbQ7rAOh0jxRYpkJqR2ZbZKRrqBFQKO98TTNFalaeGbnwe4SSsKb6wDLuoAQs0FioG5rA/to/Plc7vcr5h9q/+p9+G/CeMJlxHde32j7aSYSPMb8zXY3oBcwI8uWmKDZMEnwgEjQ5JekoMobeNlAojTcB8Q2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N1ZA2nbs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N1ZA2nbs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78D8C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766339033;
	bh=T2gEWtphxVg+IW1+kK9IzyKaihib/zf1ptYS8g9ZTPQ=;
	h=To:Subject:From:Date:From;
	b=N1ZA2nbsyQgzQqsDRfeyg4IJunSEuovvWAnq4f7sPcaJgvowm8unDXVfhqjBHrQy+
	 A2KIUUE1rriKRKeYvRi1QySgoac8vmOUWB/7Ym1ugyVYhhgUUiEKfCz8duQ9A1y7yJ
	 gbDQR36WQ/t+99M+IEdiHAutFO/Lmul7ULn21V0KRhgIAdiHn9kLk5c/CWwsbVH78O
	 yLmoGTr3TlW28+21ZLmpKYbakVDOqf+HK9jmHo/W5NtTKZrr9Xdzkjb0fKYp8NxcAh
	 1my6HNRrJvhRLuwzvESdRwSy2oB9WtIvHM32N63Nqvxg26t3ClFRE5O0OMVqKxOPBR
	 bC/vofATb+0Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95661E66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176633903357.6381.6625994835225328895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22e16ae0d8776996553db26d905015ec351846562e19c119aee8d0a91e058883
Date: Sun, 21 Dec 2025 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766339033
