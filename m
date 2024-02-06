Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10E1582C8E
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 06:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707202697; cv=none; b=l9k4S/h/bcyUvgL6HCP77drDozjmgJGbNyQBy+Tw+d89ZTGPkMg+cSAHsB1U1tWWJaejCtLV0aTV9Jpj4hBxyoAByjyBcIy2cUwUb7neHITBKHW4GyipixDoKSr6fcCitsm9nFJTT98G5fwqCZBHMd1ZmjhNZuxBCMWewg+XsXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707202697; c=relaxed/simple;
	bh=xEFH6XUf1D0aJqiA1Kl45YmJnPuv5TKVqCZBXGEg248=;
	h=To:Subject:From:Message-Id:Date; b=XhWtqQaTatj2Yq0eRForJKOtQFrWDz9GdygvxsOFPkF59EHPL7tCIpqc406GcSmCLVRQ9GAaQyIuCd6ixpeSHsI8DIFcGWtlvGtmGjKGP/zRI8wWA3ivFqCpoO5PM5hguwXiaMnAe1Du14wue7HBqVXH6uOGWp3+98+bU2hrBGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=StIR9CSn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="StIR9CSn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8409DC433C7
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 06:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707202696;
	bh=xEFH6XUf1D0aJqiA1Kl45YmJnPuv5TKVqCZBXGEg248=;
	h=To:Subject:From:Date:From;
	b=StIR9CSn4OSVsyfFQDrqJABXF0Nqj9u4sLM0v7JbPxE38sn84eYG6hfX3Iwlcwnst
	 ZLHnUKSsBD6UC9hOygCjmuBzVlk1VMGkAkwsYGdGwehG1iFa45q4OVBtVzP9InsjgC
	 EG/5L4VmIptUrVYnwKKAYZSmLi4C3fTMux4SZZpFSlWTWdIzTVjCue7coh/6Iz0TSn
	 L804LgjsrNNBqXtbxsG6IxM9sjTzVsBGn+Jom4Er3ZHGT276XPpvpBsEd6GnMiXQv/
	 j64bT1ZH/eZVpb/UZrGxzS7lBMaMj/y49Bv6M1+1+0o0ASyUgTfAMuymAUZNRh8NQ4
	 Gk+DLxI08NF6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C619C48286
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 06:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170720269643.2875.15304683551890630195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b772b192f37f860058d8e5ee16c009b691c44751deb519c563dccec5d7af1ae1
Date: Tue, 06 Feb 2024 06:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707202696
