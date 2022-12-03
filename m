Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDF677C
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 01:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7316CC433D7
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 01:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670032254;
	bh=ZR97aCNBMeyQnUtzre1ZvEmQE3msqSwyqF1chnescck=;
	h=To:Subject:From:Date:From;
	b=hplEHbCL1NJs7SFOs5fiCHjl6VsXtjGal3yEn6fHAUH7FM2jdATP2eSiwSt8F5h2T
	 kVbRQjgEg6/TnDkIButNZj8xJcFjxCw9E+8o/EhkpS7XnZhgGUZLPXMSxBQzlZwnF9
	 EjxwoSDbafpADVJqyql3MYPu6EN1nhS37PdYCGXgdSM547RQOdRgenU6l6IYBCOicx
	 OFvrploW6FlZSqFletI/sCYFR6PhtvjV0eBc0B94AHw3Ygf/9g1yGlxPTQCT9hLs43
	 LhofO/uv+LJtWFxTtm8ZHu8IN11cC3bbDmhJouLXfpONjiK3BQd7HBOwBgMlqkGyFu
	 ck/ywNTwzRSpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 594F4C4321E
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 01:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167003225433.20252.1864512315673992174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c971b733dd16c87aee4ca56af2d999188e6253a09d4865dc109ae1e3982af08f
Date: Sat, 03 Dec 2022 01:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670032254
