Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 406A9378
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 00:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8438C433EF
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 00:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676681705;
	bh=j7qOsiE2BFRx7gv3ClBis4NuVnFDbEreNV45Ie1g0Gg=;
	h=To:Subject:From:Date:From;
	b=tub579ZHhP58VhO4s1QuwnPeYOvHZD7IrpxQh6MYX56U6kgfo5SiI2dX2+lx0G6mY
	 XTCI4vOKxLQ7lM65pHGgoQMXSdv5xzdJ3SQuDtJMUI/FN2YR352Q+FyCLqiF8VskuU
	 0uSTb+fofnxnI5mL4VeQl1YsG1YAXvFxFmOAQbVBTwwVBOYFYIR15LOPH9hmUjmAJ8
	 LtjUQLovgOYaCUqTiXrpMjSXWXxlelRbMGkB3scrnHXpwCBSACSnNqArdYIlbvQrbs
	 ri4EQlf4bSv8LRLBEbmpdh8R/IGergV4N2FNoF0TAQP/iru33t97npt7yikJYueB1k
	 lnVjfKM39anZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB637C05027
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 00:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167668170578.19401.16497444198096758582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5c29dac72a8bcc24111aa006b1b6f094a09b1397b66f744b84353f2c05088e5
Date: Sat, 18 Feb 2023 00:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676681705
