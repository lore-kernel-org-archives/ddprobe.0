Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40AD4EAD0
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747356594; cv=none; b=f2kznlCejm604zF2jJWXYHc6++V6+wHtW0GvyOvYRew9y1nYoYJTvwLW32RJQDxOmABTCXEj/TVMOd/Zc6CGFlAMjSMHJFR3em6v03LZvKgOSwDvpJiPPpwvaLZVN0OFfA6g3F4LZDgfPZf+S3Dw590inr7DZewLA9QWNbHJWQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747356594; c=relaxed/simple;
	bh=Kl/g+UeCe+P15GCXsxufsCh/wvJJIuEu1/utUoKfFc4=;
	h=To:Subject:From:Message-Id:Date; b=KmAq99K++XmcLh+A4XFuTsM5qv35LdosrTLql7wKLSxeNapM0UKoW/5lyKq7FOILfp1690SqX475+Cvx84r7WeLdTtHSR0Z2FWtWAe73C5CMVczXQ0sonp0+rKSWsncZ0ds25dZV3ndgihvYwOVn/OQwyt74o0AKih6OGFyOkyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TBxeIaoR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TBxeIaoR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC80C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747356593;
	bh=Kl/g+UeCe+P15GCXsxufsCh/wvJJIuEu1/utUoKfFc4=;
	h=To:Subject:From:Date:From;
	b=TBxeIaoRwOzRxnF/JPFV7Qt4pXlGNRoaJyLxq/iv5n6QIWq40JOJDb/OurPdz7lbE
	 CyCBjR0GDL5VlowpuGgaqKBYtsRSYtNWcuXZ6op4HO8QNtuhzSj3ZKtSXxYsdBxO5v
	 6BGRXaS/MKtyi6ozN+4MtmWyoS2smLq93rePTs2mBICDfy0xsgBoSTMXv9wpPswHNK
	 ctEDqZB4BhBbve/yvFCeVM1ZNGpulNaNLe6z2/Ku9tg1+aVl4y3yAz7C/FlI4LLYsF
	 iqf5iRZdjpqEzrKySvpZDPg8Ol/9f+3MxIM0J+pAROjVdk59nqzNfa85bBEJxL7FHR
	 sHd1BazxMDOJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90858C2D0CD
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174735659358.21487.12840428182704906173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d562a640f0ae562836addba7857b993533fb21046f02c335661cc40cc1b9846
Date: Fri, 16 May 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747356593
