Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5602AA4C
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 06:41:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF328C433C8
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 06:41:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689403268;
	bh=x4XuwN7wHB7BKVj7Cw6fFlNqyK+ru5coYtReQo4mEB8=;
	h=To:Subject:From:Date:From;
	b=H45EqTt8asM2m04lObKs5VuCGKfwFzr4DaDYmHW/fXE/Wj0EWxBlZ8MOMS2BBwQZn
	 +ITEo1ykWOeOr+3391KpTPjpM7ceCBrBvVt5ARY5ctLkkkRgSpNEXWUsp8rCh9Ms7t
	 0+pbJ3FPQjuHCf1rCSiqvB/eIxhXGcDqWwzSmqvCwzP58qeweT8zH7KkqazPabrE1D
	 F2WzEy9oAJhRYTHJh6jNtVd9pBTuWZ8K5T7n+IdBz8z/jdxSVx20DR4I0+OOTImiw0
	 tiNmvwYnpkiH7uwl5e2z+nCM3VFeIxpBK+/kTBRZlv2/+hZL25PYGNSynnPfM1qcD4
	 zRMLwtsUo7sFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3310EB64DC
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 06:41:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168940326866.22162.8004893688061509788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6580b309e71f0f9b4890738b81e6c77d962bc22f7a8e2b87a75d0ef32cbe7e39
Date: Sat, 15 Jul 2023 06:41:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689403268
