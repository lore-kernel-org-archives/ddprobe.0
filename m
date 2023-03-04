Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45FF67E
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 15:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE9FAC433EF
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 15:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677945425;
	bh=BLtHYHvnXrJww4L2KgzteuhmkmoRVwWg1Hz0L79Vhv8=;
	h=To:Subject:From:Date:From;
	b=cvDRVMOi94SznnimWWwu90AxicJLsI8y9kAnmYX+Zn70MlBOVsCRSd6itj4la+qWf
	 5zJrcJzN/dXeY60a7xFi346EXIS6hHccsKrwMqlNyi/gJDAlrWEJjAjzMV1+kLmT90
	 N6SLqe7pnH75FMY4JSDHjQXOY7ndccy9ad7gV89thfjikFaIAfEWwdMtQcLYO3a1vU
	 y4j6VMRQYK8j+2/EY44FdOdHPMbgIR+bwOaue09CGVudMLPq/6P41qVKSLfWBr6dIM
	 dsRhPt84zNVO+GzPIedzghja3I92kTskLbNYGeeKgkcMuQTfOsQltNDcPnHMa9vaUB
	 6uQX9ZDjuEnWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCDA1C64EC4
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 15:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167794542575.3381.7889589528276029562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b37f008ca1030dd61f46c6b91c87a440fe91dd180d5cda41dd0c1a547fb1e6cf
Date: Sat, 04 Mar 2023 15:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677945425
