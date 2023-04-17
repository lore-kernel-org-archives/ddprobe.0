Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332D1110B
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 01:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D22D5C433EF
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 01:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681694225;
	bh=IY7AKpeBCyJ276U7jE72DybG5b51oYRN87Lfhd9jCnM=;
	h=To:Subject:From:Date:From;
	b=c5O5hmBigTpUaAhzTpUGTy2B6GThCRtFatmD4MC97ufDDyRzg4eRC3RIx4jOCtsSU
	 Qh3oaQWvqElkkFcfWcBiN6aFcp3XaOO4S9asJcQ6OF+SuP0QHZ5XXckD7pQ2n4JXcG
	 SbZ89cQzQozHxXEpsnIV/3iIyQ9mAtBvBCq/O+MKhGbTHg33Mu3xSRKccsFBSDhIkd
	 wfZiAXyka4Gkpehz1SVwm4qTK6oeOReJu8j/nHERb8iiPoLlujh/1pPvlpupma/Pq3
	 L8UvoSCBkfiY4jORNxyK2OoipSN1SQbPaOCETBSRuj/GBMl2sNYzvv0nSYgiit+ISW
	 NwxBPYIN6d8yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2560C77B73
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 01:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168169422572.27803.2750105703692621063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3be4eb654d6321f53752916dbdbb45a5853d68413d45bb7440134e64e0067262
Date: Mon, 17 Apr 2023 01:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681694225
