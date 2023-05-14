Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D3D510E3
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 00:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0A63BC433EF
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 00:58:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684025886;
	bh=VjRzk9Iqd5ZNXxeUMPgWBS1cuqMGeCFcvYi24aCxSyQ=;
	h=To:Subject:From:Date:From;
	b=XZ0+YlrQKjtkkrOkhZX6OgPR1hMmL/f4SLMtVm0xycP7fgIh2CrCyBGLgo7zhaYYO
	 lfizTotI4b/7eJpyqTVY/1RPLHuUJAksXONSTCwN2kwIef7xaZUe1ztiG6dSJAYdsZ
	 qaEOE1tLaO/qY9Ia7zsIDfa3c/7ZyzQd0607pP6bvvl0c88qf41dsBJnfW9ULeBwUw
	 0rucqQs/m4vAVRbu/snn9iOgdqa9PUmHFZq4BomDR5DTOGFCqRzUxvwB6X58SByhPp
	 J5MjuT/vrk37DpCkt7Hzj0ZQ97kKhMuuSXBVPS5Zw+5EkSXEUQBBllR0cVW7Y2yNUi
	 vWYgM1RgxAPCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D53ADC77B7D
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 00:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168402588582.25778.8175728080352378448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5527b1b19ac6536d21c685cf0c6c56e9d7fb912250d5529c11845fbcff51408b
Date: Sun, 14 May 2023 00:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684025885
