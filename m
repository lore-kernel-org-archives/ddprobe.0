Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D0D20FA
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 12:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDDADC433EF
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 12:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674303725;
	bh=TrMR6GsHTmEZFsVGE9EImSw+YXzleA04FPpuuCryIf8=;
	h=To:Subject:From:Date:From;
	b=KkuXWeQWQKdxr8krxRIzHHiSnJ1z0/jL4knBXSjSt8vhLjM1vgjSPIiy5n7vcRJcB
	 WdZIk6P6ViDgPIahNWf8L3GmwejiL37uBV/jkF2vC+vKBY13twgu+NCPmFdzNUGyn/
	 HdZO3TSHN9iE9cnrMCek/z9sdzZqPmGr5erVZo8nlfftJMPvRfpQpvHCGm0+mLG+dQ
	 TEPXNzQvEBzbHmaEHVFZzPwFBceZL5tt1DQVDpZY3/Ttf5uW79wCvBsC6MSI1pmedb
	 wMYFYLo771njyqv3cEp7xRBtbAJC4VdmlX8ZjleUbGIjtzCLN+anh5CqqA8CFsg8qX
	 5HGdg0lYyZ9xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3298C004D4
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 12:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167430372572.27045.1648775108110653827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c73566562789315ffba1c1d34681cd7a2199211f8608c90747a4baee124316b8
Date: Sat, 21 Jan 2023 12:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674303725
