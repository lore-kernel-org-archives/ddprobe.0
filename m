Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D25F8346E46
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 20:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773002693; cv=none; b=UMX8cxzUahyZtGsIgYUhWEvbZeK8K9uIGZ7tUiegLNTLsyaRQFCwv7rF1abj0p3haZLTdXcDtNIlrI1eOYMDOdn9lx+E6Csl/aiCjssIcNqdBbR+M8pT+a9sUvAG0qNC44Wb5LH40l9bcPvimh37phwY4f753ZCeeWfKB195jv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773002693; c=relaxed/simple;
	bh=u4udKcW0qMg3PYfsSgr5/uId+1kTQ3chbkGJ6PGDKOw=;
	h=To:Subject:From:Message-Id:Date; b=k5xSa73RuHYbhwShRMHVadmv+dQOGGCwl3SEVaJSze7jhRD4EbhX4OYOqqdwQAMNQIV7VZ5irEKfe6ucjxXW/iPsP2a1zZvPrQ5x5odh3EB3QEIk9XFWWdD8Xga+oUOL/9iYDVMU8XySqvs8skZ/TkCyJ9bAWwiQkprbth1KPho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M0hkFcqQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M0hkFcqQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B49BFC116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 20:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773002693;
	bh=u4udKcW0qMg3PYfsSgr5/uId+1kTQ3chbkGJ6PGDKOw=;
	h=To:Subject:From:Date:From;
	b=M0hkFcqQR9okV7mqbAwS+Pu03Isci34eHVj/kD2HGOaQebcz6sE4GHsfVy2OW4w1j
	 uCxEtve+OXvWwLcZccmHhdgm0rhFGSQrLRh5zTDjimaQ5gisR1MDq/RgO3pcdAJMCn
	 lhzaBvgnmWOb8UaFDlbNDmSVB5Ibhu3qMlQvDjIm2Zmt/kjQv6Kn0xoKyMG/JV7Z+R
	 7X/Ws6DF9Q49ljeLZHMWcZzwPPYZiNHqUiIvZHsFDV9jpCSx78V1yKXbha0RjYgIAH
	 kJQr+tTDfyRy2uJxc3Z2L0dmka1epEFeZ2ogmBxA6iUGZCirGL3WL2kgQwAM7Ce7IV
	 90EavmGad4Lgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A41A2EA8545
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 20:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177300269363.8922.5233000529410507065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2d8473990ab7903879a791db4ec094351419f93d03a1dd1aacf0dd39a26053d
Date: Sun, 08 Mar 2026 20:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773002693
