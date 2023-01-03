Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1EA87E
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 03:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FFE6C433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 03:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672715487;
	bh=JSdqXkapIW17PiPb5l+Zm73Shx+JUGrhZMXNMTDX6vQ=;
	h=To:Subject:From:Date:From;
	b=Dg4WlOgZF3lVqcHukNAOiGbeWkAHd3cZ0+ybBY5Y2Az24JDVgX1pqMQibNpLjFkTD
	 A0r7WrB+hR8x1VC7rVGGVO0Bek08+gcfl3WmXWwmzWI/V4X6IulmhnKZeu8Ej4h+Ta
	 usW3uHscXxyUgzn1JgX06MaD6HyRrFBHpRQEwCX4v1/Flj0FeGnaUZKAtNsO+3zsx6
	 7RmtvozF8ccDPfiTJfftdOAv3LWTMVu6tRJPbD7iju35F7vpDIMAwMfOo7ufhRYp2s
	 w9VxbcXqNVl+r/2pPXNv9eIrjXJ7N98VdHDhu6u4l8zWIXZHMrLAt11YszWN32VjBQ
	 Yi2PpHfDJA00A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E277C53210
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 03:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167271548744.7759.10347226301264838543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ff69d88dda1b2a1c12ebe680d1a28140b42cdb967293d6ce171be732cea5edc
Date: Tue, 03 Jan 2023 03:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672715487
