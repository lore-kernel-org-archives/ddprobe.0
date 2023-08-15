Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 628B56FA9
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 09:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8050C433C8
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 09:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692093188;
	bh=M3eHS8CwU+OPwwg/4Z4c9rFKYvvJifqQ4MBjCGetKVs=;
	h=To:Subject:From:Date:From;
	b=lN/f74g9XAoJO00HiBfuGHD6qTrrs6lGQQiA+FjKpyCA/D5UXviHYcsl8Y0jOBc4P
	 sIrRSTCk1yfAnRU2ZYsIl17iGRk65cNhH2/1NikkbYX9sWOHCyuFe3ox1Ljqzq29hG
	 Bec2h5k1sxTNMcv6lduxcYn6nXvALrP+LyDboePuLboKEIdREOCL1jOtwQGw8LbFtP
	 mGopULPSsAqLuKu3hPTFVtSig7hsPlwcyxwyTA/vYZ53XiPdi+dlixmjvHxUi9/ftM
	 3VS5u6WC0o8xZvJJCyFBVw6YVttUa7rI88yVyFyfe3WaGBxvsri//CDkg2Ko9/0Dij
	 xFS4fmC5zJhBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB9FC001E0
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 09:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169209318870.29029.6775717204018660377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bff745a7bff2fb1d94c3ba3f2b05d5cb636b7433097c0f3c1b67cbc6bbe2f53
Date: Tue, 15 Aug 2023 09:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692093188
