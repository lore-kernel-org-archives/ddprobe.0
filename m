Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 745042F26
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 23:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6CD7C433C8
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 23:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691362988;
	bh=Kgy/M43Tz6UoGMqw67x/xCTvX8LQ9LR5Lzr4EyAmzps=;
	h=To:Subject:From:Date:From;
	b=ku+c59W88RF0dB6tlUrcgSCjnnFzScTQkvLCz4R6HD3RyjJf356cZxisaZDMDjCHc
	 e3dwNsW+OL4kb/LhJbJGG0EbcwV/McM/4ghVeBcrOrjNIz9s5KeJbuowfBnZqfoXct
	 8MZA7dyc7JZK+0GiTiS6du7RwxHTMdad57RMCM11sCrTSblX6Z1sxW4E4WABuY/nhd
	 1JwR/lObWAX/e9tjyYtoCH2xNbB2ts/bAin0ufiZ0b4owDmdKZlIuyMXw7xX+Wp62G
	 DWLdP5zVuzmZyTv74s6qIfn5LOh455g58hpVvf1toxNRJ1n3YNsPBu214au05obLwF
	 0jt9Eg1IZrqtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5F6CC0015E
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 23:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169136298869.17737.13263965225448680757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6a2744cb8fe739d7356ac79ade47fe7fa60ecd9d4910a766566104c1a72dd9d
Date: Sun, 06 Aug 2023 23:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691362988
