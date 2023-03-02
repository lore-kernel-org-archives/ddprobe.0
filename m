Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B67163
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 06:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2D26C433D2
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 06:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677739565;
	bh=yUy/9PGrgycma4b667I0hOOFpgjMeCY4Lqqw/X+Zvjc=;
	h=To:Subject:From:Date:From;
	b=JPT/DSvisq/WxdgULGkNhHV6UwQq3/SHQ9pornoriLAmjcB2AEX61MYCFh4OM4kaP
	 kGOhrXlPFGTdNfI/0ADJMWha/5olfq5ntefok+yW7mxYB7Z4mk0Be7rFPh4HLAJvn8
	 QtXTSMlPFgwH6258bIp3lqRAX9nQnKqz13z9lMz2fbbwwmY9xuE1VGLQ2NfhPtPUDG
	 47N+Tceq1CRMtxzT5ai4bn+hRdLA4KCIoo9mXDf+eggQBesrF3s3HuE+X7w5gq1iId
	 uuJz9ks/NGQv1boyyuoNGSRB19RvvCUVHjCOO56J7Ca8apGpeILJpRCG+nAtsNA1C2
	 H9yxH7d7tk0nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8F16C6FA8E
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 06:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167773956574.5353.18336515893381741263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd0c0d133133cde002a60b00e3612acbb4acd45c495d4ce39cd5f8204566955d
Date: Thu, 02 Mar 2023 06:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677739565
