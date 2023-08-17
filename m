Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 583902918
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 20:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA924C433C8
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 20:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692305588;
	bh=qdRDgfVXNHOCB2P81U/9jbAYNyhELEYBhl1k3ith9QI=;
	h=To:Subject:From:Date:From;
	b=M1MJB96knMVclD5TEqeGzE3Q700/AdYjPwmk1u3gabaUp9wXur7seamhlxDwwVvSX
	 KSIzK3KlpUEG3kDuaQhTWXTK2U+IZCelnckAb5KqCg50F/4YwQipDYBOyRpQHkCQOH
	 p/iICDvGgRHIAgHPY+GbQt8yaQo0pimcs3hXcoOZ/8wt+OM+gChvF8TAAlKvLZEKI7
	 +288BSDddNZH4EZ34s7XyTqa8ojstzx4urPn2wmQRAlxzLtURN81do9Y2K2wsjAJJM
	 xJdXU6F9WSbDDq0FoXySy7HHVThEORo9XMSBJIiXTmQbJTIHcWRHji/o3QRX7JvOfP
	 adZGL+PzBMZBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF8DDC64EAE
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 20:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169230558871.16322.3121980134912128257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1e6c80d9ca9b2f80d612e5bf448f87537c2bbc4000d1ce48edb5c5ffd67f769
Date: Thu, 17 Aug 2023 20:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692305588
