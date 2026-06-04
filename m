Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24921481FC4
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 16:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780590874; cv=none; b=de62DhJdVzbsiA1Bp/MAcmcZGvXizD51HWm5xfpdhQ+QnXXhh6o7bIKR9Mi3P5nOQsQxvM+fJwF/O8NtcjROyDIV+GLMqCjqBr+kShv6wrbImAOXmf87Fe2lKuNx0llN58zaqwEFD3/z3/tktOpY0SDdTepHhYeC/vN+VRRSeOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780590874; c=relaxed/simple;
	bh=wvFDK4y/O5pUapomTHhFdsMvo+U4n0PzXHQRBcFp/HY=;
	h=To:Subject:From:Message-Id:Date; b=jm15pVXVrOE0vShooApwwM2QhRTEGpSoGSPhov3j3Hxmn37jDGS+6gCwCDtTnhuzyfRYrSgP1HrXjCz18mvK5rmXWZeFj1mHGG+6+12SdKSUVxdwTXuR9MBHvvb+VZERtiijDwq52WhMD6h+/lkyDSlvd0s/Aur/5dTdgg/Pt1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S4eVY2Vm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S4eVY2Vm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2716C2BCC4
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 16:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780590873;
	bh=wvFDK4y/O5pUapomTHhFdsMvo+U4n0PzXHQRBcFp/HY=;
	h=To:Subject:From:Date:From;
	b=S4eVY2VmWZ8AsbcLQ8LoZcYf7TngPrBsZ3o+5QDytn7e/zQ5//xmzg8J2h2HWm+V8
	 cRJJ/iamzGsc/E9ucxSbk4eFIoLQQthtdEBgKvip3+ktQWgRBlrX1NzRgq3aSVeQaZ
	 e5y6rNDm3kiZ506wQivjW0XGyVlkYFP/Av7kS6hKhusLqD5VAnog+V70uAX6c1oGJQ
	 +giLYNSRuEpa9QLoZMabCxzZdXCMd31gtcd1YXWem3RBQ0jHfnN5bSP1vMF+Ey8zhl
	 wYt7Ue2gqogJ3gluNjtWZtJNCjIZOzWR71GY9UaSHjfcUkC0zmj0/p6iCIj/jFwgUq
	 xKCEhPm8Q0RVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF60CD6E75
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 16:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178059087369.3906.3728205540390600741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c28bf1f5818dcada520b9d26c856dd96ecc7e7ed17dfb156b8b30e944457c543
Date: Thu, 04 Jun 2026 16:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780590873
