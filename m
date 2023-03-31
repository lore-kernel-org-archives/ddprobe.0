Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C278C10
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 18:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7678C433D2
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 18:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680286385;
	bh=xNGI94z1plKIbze4QqKQNuwiTQkT0E5xACSLZQrgyg0=;
	h=To:Subject:From:Date:From;
	b=RvydCAo60ECdbdvRRn0NMKHQ5KamXQ2iAlGXFI4QozaA/TTPJflSS4DBGML20bs+I
	 uJ9fXyaf8XfU8yw34gSIKY8KnAQX9Oew7mL5QxzSkDSgnzhlgDkpkMPremu8PaXoJy
	 Wn8pCpyBrdFSxER9woA49BoO7wxan9VJBNEezZoB6rCnYIoW2m42BMgenSjWBS/r5h
	 JobdXphEhZpU0gbRqfuNCQ3LKtznkgs6xnuWzyh6rEUvars6kWnJwSE1WbKIZhSqM9
	 qBFkHgYqs1ppPuELxqCh2yOg8D6b8QulmjcScCD7cotZXDmsgT6b2Ru7qCPWb17k94
	 /Gjoyf19NTvUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7EE7C761A6
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 18:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168028638578.31672.5901395515382349486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74fc6529c04ebdcdc2eeea7f76238a54c99577ef921e5fb77433fff0f4a692d2
Date: Fri, 31 Mar 2023 18:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680286385
