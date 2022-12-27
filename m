Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E559F882C
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 13:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88914C433EF
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 13:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672148487;
	bh=wMDNrnT4xMI5xIqpABJ5FbT5HjKA65ALMU+59TpTiVY=;
	h=To:Subject:From:Date:From;
	b=RpeRd+y9N/lDaKZfpN7kyBPw9b6WAmyI1L5ZlBBGftXRP8/4pdT9PL+v6q3v2pNJX
	 yjKStJIgiIZB4g5vt2MiLCMeAdZI9NcFAzSdSBvqMAa6TmWjRsK9TyRTNa85aO+VnU
	 kesAy7lVDbdKztPlcUkdzJinJbmYhRsxenG1/PzoJCdw1mlQkUquHhOGYHAsDT39Pe
	 iwnENUacz8g80NYL/Xg3yULyTrWc+pyjur2KKopXqw1W/NF8h2juirzk0kjvvHes6s
	 q8IOZNDEUov+2AYohNh9Knx46aR77yfDEe0gyj6UP6amgcBy4ltdP9aVWC41k1v7UG
	 5jO3Xy6MYLvIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DCB0C4332F
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 13:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167214848741.32248.3751289312367777519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30be8252a4323aa8f24e6a39bf17a69901b6c6ccb0b485d2f499000111431c89
Date: Tue, 27 Dec 2022 13:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672148487
