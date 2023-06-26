Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E7DE6FD6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 11:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F5AC433C0
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 11:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687777388;
	bh=MNI4qJmnZhBHJcjvOeSF7mRJ9lItZqLE6nbgI9mvDA4=;
	h=To:Subject:From:Date:From;
	b=uP4V4O/6DAHn7SdVWDACLh6+5c6eHod86XpHAE2Z7unL/i+9yG4HbipAngQdZT+1L
	 NpI84jOhJyq6R2p9D8fWx6LlGIvc4vYHrw6/mCTdzW1YYbkG6KoTzM23ZKhHjv8ELN
	 NEWbrgaN/ba/VWL3ilCUNjo1pPsjQJ0a91W40onsoVL49EaxwlSUjDNGBdS5Dnjn4S
	 FF+BBBRLOHQ6n4OeXuY5ZTic35URXrGdzk5sacZPcd9NO+YtUsf6B5nyuoBVBmA2uS
	 XEShIOdP9I1STvJtg/LSwkc+XJHRwhJuPPPHaqsSxYcsSK3NzAx6W4ST7gXfJau7O7
	 /Y/wb6IK5qxUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7859EB64D7
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 11:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168777738874.30483.12938927640949668123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 525a7d2d88f0de744898c9e3f9f542e8d15e5ae636cb235cbb8f8fc6681dd552
Date: Mon, 26 Jun 2023 11:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687777388
