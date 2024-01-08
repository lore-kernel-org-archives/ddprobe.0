Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02FD94685
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 04:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QvGgzUIi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 805BFC433C7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 04:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704689896;
	bh=MA1BOYPMbPJl2F7+7BLSmZQn8maMsG0/7rj8/+J5JCU=;
	h=To:Subject:From:Date:From;
	b=QvGgzUIiPEKlmtz+4eUlRR0ROLlaSBls35qFth+4jPUkCtdPw2foEOnlyowtefecG
	 LLokb1DehWuCDgGZ9DfdQDZCWx3ikQNuFPOGQWug7HL+8x4854BFYhpzv52pHOAciW
	 QscJRTw/+Jci+Yyx1GP1oqOrTMeE6+5fUuWP0nzZMZ3gx2ZH/Mx76I/3C4/nwI1gbC
	 pTmeVjvihqBJOIvlzxtu81/3TmTZeJyMyVsyV5mX4DIFpOT2SNTZAe+kcoYNE216Qg
	 2QhR531b6rT1dmepPGJaaBGxht+WWJOVTuICCMIvP425nk6FB9Be5xeZW04L44NfsE
	 8FtEuGvWqb5KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 624F6C3DA6E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 04:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170468989639.5964.13511617071304111539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed25d6b202d1e31c4c71cbfec216cc72c811082a5ea89b15f6f0e695d56e6da3
Date: Mon, 08 Jan 2024 04:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704689896
