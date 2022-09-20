Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C55987C
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 18:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73C50C433B5
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 18:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663699853;
	bh=zVKMkKiofyzd6tx9UAlAO38FYeEy7RlZ44BtrB+dYsU=;
	h=To:Subject:From:Date:From;
	b=Bh1VoH3ahOi9sIEVo0Tf6zrEZgFXKTLppsYo0GNX1qiy7fbkxps5QUBRNA5BpfXLJ
	 RaWuSAyw8LkQQErbYogSWA/6g4lio/UrrQ3rqqRCexsLoAi497yT45U04mjA9Drppr
	 RpGsRescb8sJVEoONeZ70R/bm+el1U92s3mR5Ym1oAH7wwE0hkbJfjtYPKgUTLwXLP
	 EiPUOQWbWN3zE01cN+MLNmpvtZmaxBvZlb7ieJcw+E43kRNY/wicVYSQ4yGRujKEsf
	 1N9Vz2snSVxirWwCLW3EeBSBbsDcEkauvWWQUZQKJVTOzua/uojGq2aZ+BsTw8T+lv
	 /ogoUlYSfglgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D0E4C6FA90
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 18:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166369985337.498.1706795124323303769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8deec20e595e55c085113cad69f95b8e56063fc6da7d11d067e6eb52107de4d
Date: Tue, 20 Sep 2022 18:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663699853
