Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C511E2823
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753715994; cv=none; b=pSI0v7ra1E76dQBNaJklnYbcjwtL2Z3YHwDNwgS7ZT4gGptXIZjQj7E8Op4D0EfhCL2giSgRL6JUyocnN4kU3HmSzK7NEr98RmgrovHuTUDK/QKphJfaEYTn8Pk8CSPB7PRPlbR3LyeCFtolvCBXmINPFK3iYq2mHlNjHgDHzaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753715994; c=relaxed/simple;
	bh=fkZfOBVNOU+7orHgC36HbQ0oqr8Qr7LNX9/A0il3OAM=;
	h=To:Subject:From:Message-Id:Date; b=DFI+lA/c8wTkup96kTIPuTH9qBrowl7WHNWAMn1ig4iLvUQOc6FOsqSJ1heDaw3cvmS7IO3CQ6Oa0mLVmCMnjpCwjv5eAyXJD0Q35Xbh+R/tKUYI/LL7TgLc8e6UD4XgvfA5Jo9FGVdgXEj/0LjBtAu26hRJ5fRtWeLqEEAUOcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LkaHvP7l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LkaHvP7l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16E9C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753715993;
	bh=fkZfOBVNOU+7orHgC36HbQ0oqr8Qr7LNX9/A0il3OAM=;
	h=To:Subject:From:Date:From;
	b=LkaHvP7lS2VJT6VRCiwVMT/iTwr2szPHfMhIfMFd8obWvcZqjuVqmlVKDPsP84DUS
	 nllKv0fS6VcQRw/6hzUYIj1Iu9Her6+vHCOAEPFjWFf1wu5+VvP2ajWiX3Fs3UkpUs
	 n2bVG36U59bO7KZakx65WIui2WQRvM4AVGinrgiYgrzIvA3shvrc3wLsboAIio/oJH
	 6+aG8qv46jhvkRW+nhhMCtf7iLEV3OSILJ5L+Oo0G3e5igDgedqQ4sKvzZqVDP8N1T
	 QNBUR2Lh2bFz0QcQgefa2U0fzDlhPNG0jtnvP9qrWC3KsXiEufgARIrhcWZ675d7gU
	 nGXhwyOMO7gbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A52C87FC9
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175371599358.13430.11865976538299184043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbbf92479c2ac0e23f24757d63184f70559092408d5c16486316b9addf6e3c42
Date: Mon, 28 Jul 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753715993
