Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45ECE3207
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 19:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4923C433D2
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 19:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674328925;
	bh=tOi5++g9lgubejEkrEO2XsZEpUE8idW9KFIOlxOLATM=;
	h=To:Subject:From:Date:From;
	b=Qi73JkwsbxhJygUjnTX9bf96lHXy3sNyPRzJiZBWyQ4dnySIWxDVcAvvT8Egd9gWn
	 nB8ZRkDv2vY5Xn/Y22A3qvum5X4rEPJZLIPQC8ob5jX+1vq0Wxeh1bmyLUhg9MYsv0
	 hMvOr3jmm5gU54c9JQLgp/Pj35YubTiLzhAeN/aK59WUNcvZV0gKTxykCvfOmC6Qpx
	 4L+tNxvzhduZC6tRxg/yu8XbQymulBcDM5XI2ACp0Mx98UMGTApNYyd+JLI9MLlTdY
	 vxjcfeMhlrCeMZQhs8AJAQOQstRWLRbR4qrI9zFOgX4VhJrQsCNjSOxfY2Z8/KucUS
	 5mX6ZMi3Ib3Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9212C004D4
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 19:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167432892575.24229.8302605992808580291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeb4c216f5507ba428abf87c56de59859feb273851956578a097318bbe7ab29a
Date: Sat, 21 Jan 2023 19:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674328925
