Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB6D9136B
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 12:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DC8DC433C1
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664972453;
	bh=bzsFjn5G3lERvBjSKx6mWd4eLOK06b99fSd2j4nfbRw=;
	h=To:Subject:From:Date:From;
	b=kVXlmZVXGeARJz7fCyFU/dqHudV0ixe3VKH8YzweNTFqJlV4UuMLs/CkMuxbwtuWR
	 6QPvEzRFi0N1ckMy0UbB3FKpql+6XK0ZeRWZ47KGoHMmn2yQcsLRi09ZCmtcGgd50z
	 N1bVTYX8Q1U1oaPJaybUR0gfYWXQ8hItkyPM5YUdElNMJEUvuuUZFWzjte3h5pMByy
	 9cdAqCFkz8JyIjn5pB1pITlAE2pRL8pZ6/+r07ch9hXs1B54HOHi9gzGqNqt5ImK6Y
	 WTw7+No4m3n5371sIna4LgR+7gAEU3VKUwv+WuP1wEOJMOu6fY5LDzdMwW6D1SsQsE
	 wvr2sR/cJAO8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52F59C433F5
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 12:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166497245333.23379.1697545402318899544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0a2ea7d8e66d7eef2a2c3c2b0aa8d3b6346da59efeb2fcd2936c3ea1d0c5493
Date: Wed, 05 Oct 2022 12:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664972453
