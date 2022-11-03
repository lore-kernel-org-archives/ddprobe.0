Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2F4B7470
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 14:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7539BC433D6
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 14:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667485254;
	bh=+dA9zweNYmftDKnCez61WPMIGgtOiwmhtqn3V7lfMws=;
	h=To:Subject:From:Date:From;
	b=tPZcxFWxzlzKlemIgpiQzCbUtgPrSA69ki7LX9cmNUgiFMM3gweO7uiPcntqhoU3c
	 U6zvdqASg6WlSUq9mHiHrVFLdnU9XLCPeqqhKnUrTpxbC5xS33e6UpKGDjBa1EZndz
	 eZ6XTLfPfZuxPDZAXc2pV75zK187ZFU2FsZCKzrWZ+8EUhLsTXSkoCxVnCsoHQiTgi
	 Lt+70IupjykQUqdXcW/NEP6MYMIntk75PKa3O2M4GCBfwStxwSV6VV5t36GAsoQOUa
	 IFqeX93ly0n1SKObQmOgudsm7SpkwDFEzKH6FjGGvXk7PuQC+6X96+jPvI4ErBXZby
	 lhW4o/g1w9FFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59CEEC433FE
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 14:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166748525435.5504.16836996937913417057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 634954e109d08e678616c18aa566c0aa8f999e8b487f2494cbc219ac7ee43ec7
Date: Thu, 03 Nov 2022 14:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667485254
