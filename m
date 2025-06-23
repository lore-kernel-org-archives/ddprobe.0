Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 449FC22DF87
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750667994; cv=none; b=Nhyooo1XTMIygf9CLUbs94cbvX7sYNCxMQAwTbjHNA7dztygYJZchF68obgYXbcE6AJv/OnPWkfWwd+cT9nMu3kIn5YF4zHzHVcQD6fvmUz9+ZVWjBLQmhnok6LSvwIqNe6dwsgwe8AhuohUxJYFwCWlXvbEtHt9zYYdG5R7D/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750667994; c=relaxed/simple;
	bh=exnLk8LNaxuBs3PSphYicrTHhMM5DSoBg1Y/8OZUPw8=;
	h=To:Subject:From:Message-Id:Date; b=c6VTy5IoW2hQYaDHIyrqJjVF78GMHe9ViQ9374FsirV4vkVkShI7YF8fGqmFQDCickgj+zm/9xvr9M2awjKCIlrJ18n2HpS0B+XhRo1Q87R9m8rln8K1stN6VORq6dymfdb5z2QCwWNEwDbBe5qpBFrhDyHg44QEQu3z6aumwAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=By7FXGmz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="By7FXGmz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC3FC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750667993;
	bh=exnLk8LNaxuBs3PSphYicrTHhMM5DSoBg1Y/8OZUPw8=;
	h=To:Subject:From:Date:From;
	b=By7FXGmz3ID1FfxgvxQYfy6/OcbY4dGGvwBdDUXpnpn0Z9YxPNmRmLBCwdkEuCqTH
	 Xbk5svGvw6YFp8U1EyLfPIzROk+28dk8sVy08aRslCMByEEmu0kDJQ2xt4J1YMDkKT
	 EwJUsVVUqYKRcl6P8pBueYZoapCx52wWGSGHBi0mJpcMUplPfzi3HRZDR1+laLzSIu
	 0Z3zFo6vAGfn4kpKcVm76wgCPcPG/hj7EOvTMVH8UIytv2WCEpUncfuwJSrw0Hv9uT
	 1IhMfun8Uwr8WBXVUU5VfnF3q+Gb0+Ie7MYFr54WZO4F6TqxCwbsCulQY2gkn+CjQw
	 5HmXVZdNwHCpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903C9C7115D
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175066799358.31817.14388007979329701028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bf781a5eee09c775ceec92699a8db66dad09faa5a7830192cc0ff05ab784f2a
Date: Mon, 23 Jun 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750667993
