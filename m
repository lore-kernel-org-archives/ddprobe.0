Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DEE346B7
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 23:21:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8AB0C433EF
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 23:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673824887;
	bh=R+EHX2iu7Yl7mnbrGHdH4+21s+LdZ77BT6vjWpyOsaA=;
	h=To:Subject:From:Date:From;
	b=PSdQXRgp6euaLWycN0V5R+0TodltjZIQIg6PglAiSg+ADC4pZlBqL77SWgaahDStn
	 lt1JTYFhzRDzMWBZVrrcwEIb7xIRzRKad8++Bw3YzlqWw9bgQlT+6QguEYwkUWU2H6
	 8NPqyCUENNoM1jQNK3DniqkdfNIM3kGDD/KA2HJPrB6FwI7w2A08xeIs5HZt1MfD+h
	 09ZfFmtNYnLC4lf3tY5TaXxsAl/DdrdHXC9ewlgZEmJswHTwBZlB/Rn6qcWkcYA35O
	 iip/veY2vAgy+EHm0xbUzwkL/F/q8wbJbGT2u9AXoFhgZj/vAoSQHwZUNl6/YmdA0l
	 rh40uH/oQIUBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F35BC3DA78
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 23:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167382488754.21274.3145265165031887419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3fd53906fa08bc0d5ed3e5b8dcdc2ee0bc410c186951ccf6ffe935bc7f44088
Date: Sun, 15 Jan 2023 23:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673824887
