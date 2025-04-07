Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3499C1ADC7F
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744034396; cv=none; b=OnVK+B+hx0/gCmvRvOKDRWfdanjaOP7rRwDN7AQiRpY/t0PiUgdLBwWUdHhBPbFQ4MiC+0Wo0VNwa8HeAWcLhnrJSIzLNDPEGSQluJB5DjX8/P8DGrZJ0UpjlJzeGTKjesAk5N4aaqsNnhVH+sH0jHTz1KMpJvC+nnvWc3lZKGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744034396; c=relaxed/simple;
	bh=1pLthu1KX0l4cJE+ktlHHakpUKvYvcrRK4KADrPO0yg=;
	h=To:Subject:From:Message-Id:Date; b=FjI5A7wkNREU29Zz5kaL8056t/xIuAtY8j9skk7j+0spYdi6Uw5IP1OnE7rKSOdMhvLqOWg5qJ9JYpboHPGT25qbHwKucrZ0OdzQyznEyxRk1X+XE8/sauVee/2Nonh2MDQoGMnvdiuPmqtpTZegmwY0qPuF08rOhoo1umMeKd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rCNiL1Uv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rCNiL1Uv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA324C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744034393;
	bh=1pLthu1KX0l4cJE+ktlHHakpUKvYvcrRK4KADrPO0yg=;
	h=To:Subject:From:Date:From;
	b=rCNiL1Uv3+1qu5PAcFZEKQtQB1j6o1Ktpb/Dl0pCmbCaM7y3VtCNj56m2XOAfQXFm
	 XKDUmvybKtYEMFkdWH46vWl5BDSt57zZophZNAlduunL4beVDEOqFFsE36iVHMV7mK
	 C2NgixgHYhgEQsSY9gzR5CnfB95GvHXOnypKAInvG3iQT0oFVCs9tRGFykc7fmaQX+
	 TdvLxp4lhrh4KlTUtN/bwYCjaz5WLi0M9qovG2KrHgZRew9Eljeu71EznI0XPEmdwf
	 CfhpRFXl9p/EDKZO/akNjm9fYCDGv29wGpI5PDZ7Am6FjVsWk16MvLCn1hHW/WKi/B
	 kKabP1Ni+t3xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988DEC369A2
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174403439361.26745.8745683055307529902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e1731c26c420f74f867a397b644cb9cebcd1eda4486ec37e12db9cb9355203e
Date: Mon, 07 Apr 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744034393
