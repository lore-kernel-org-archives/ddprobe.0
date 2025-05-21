Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E81A25EF8C
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747830594; cv=none; b=nOO0wrx8PRH/8ZJgCbfqJWvBIABBPY8C/kFfeElGK5flojbGoTTfdCiPvgC4IpuZkkFg+mx2LzZUIyckkUtulzYFxQwrZJTY3XE0DO1Ao5DWVgw0GMAQY3v7F7SWGp32vzjKdrvVlagGak2CRV9xtMRG1ogL0x1j6eikQpmUJYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747830594; c=relaxed/simple;
	bh=PX9EKm4h8IvLDDjY64PAenvitFax0NaLZvTOSphPrjg=;
	h=To:Subject:From:Message-Id:Date; b=H+eJ3gRH8xBFwbMV13qxWCro8HgOfTuok40Zf7FPIjtWSN+qzGnRzY3hRcRNf8uuHyZ7MNe/XTB+BCLtkm0b0thKO5bh2Nkp0EFi4WVabt6SmqsCFPP9+3lqn+cBemfzm+tTYV5ROE6s0F7GOYF33xKAPl8NT82UFGl9de3lObI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R7BWh4N9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R7BWh4N9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B67C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747830593;
	bh=PX9EKm4h8IvLDDjY64PAenvitFax0NaLZvTOSphPrjg=;
	h=To:Subject:From:Date:From;
	b=R7BWh4N9KnuJjbFtBKCOhYVOMKlIsgEiGXYfCARlhP/gUv0nQJ9/xMGkMjztZOWB+
	 2davFYVYkU8U97k6SN8F9GXDIOb3zShBbMVy/qsrONXx7DT1yMfHMP4a9WvlbTgJlk
	 2xGFmB5Xd9QYf7gSS09zAAn2wmhErPU0t0qTKOnGm6KM1IWjnGsn5NhzqoaMM9jZKn
	 Ol/FF46R0b+YBqnJM6dVbU/LsRHLYqZW0qLcj3HL7in/sFF47YX0fKArNda3nZlEOB
	 ymOaGD5mEO3siDFP+yogwBLs6oaVX1v7VCho1+IFyru1z9yrv/kRNpehVRMvt+OvTx
	 w/ZGirZ1aiFEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E28C2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174783059357.28536.13265020491056328067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13358ded09cd53212cff9ef06a2c33a3052db8937d0889de600142eda256ebca
Date: Wed, 21 May 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747830593
