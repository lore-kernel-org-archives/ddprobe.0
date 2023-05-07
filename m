Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FFA0257C
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 12:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D510FC433D2
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 12:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683463685;
	bh=Res93XJsu7CPtDinbLUg9Sb+1tn8W2sA5eu2uIRm8v4=;
	h=To:Subject:From:Date:From;
	b=dBRuKSwRk/1XIU6BJI20pYiSFCA1D54Tl/itsPGAvyxgvNZgxlue75LGtb/EpHNsf
	 pr7mmIbUDZyTKrsQJGUbfJLac/KeiHWYJ0/jk/fXkBIuJZWBzI/yVOXNEXddqutmZP
	 qBScOpByCnH98Xu0XN/Q2v6y2vVDUDMenbilRlSkeju9D9keqUuZ6GVh89JO3euuRQ
	 /X4/tpUKOPziyjSUQ/ovIHUC29yP8Aq7mjPQtzs5S9PdToppcV5sfAvibScyTFry6v
	 gCT/SD/v6EoIRp78tdYvaCR9WFKCmGaOfiM8Oj5A6lMKXrUz/T7udH2YmrIXhyhJZH
	 v7Wy68jSpFVLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B84BCC77B7D
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 12:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168346368574.12277.1723261849622879710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c95cc1954c78c4afbdbb32d4e255c2fe76c7a90be7aea83508491981645bd6d3
Date: Sun, 07 May 2023 12:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683463685
