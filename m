Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DDA77C
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 08:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A87C433C0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 08:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687680188;
	bh=7o6s6ArNXmbCvCFTugAinZf+lowuNHoOWl4UHTYMSNU=;
	h=To:Subject:From:Date:From;
	b=g88J6R4Cq6G5SIBvTJTWIyWE5Ar7Lr1oDn2sJ3m6zT9iLtuUqLWYxEIdE3YO+tdpI
	 NRQIl+PCNTGeCHcfAWK4uQ2iJbZ63JQepKdLhwCsM/O8gPaPkDXX6L03E0zelgIkuZ
	 GcUH9TBwd2mRRp3pPPoW94Z0DwAlDBSKk8oxCAwfh3iSNUo8FVi2QbtDRU4vc5SPjL
	 U8/le5E/gndXoNuc9xSLSH/OEB+65036DYqICA3JqyShl8hCz546tR7xU9B9JlCOh6
	 HUGRnoucmLWtuhsk4HbT2LbAXNOD4Yve8Bkn5te7AKtNAvBSdPfN70yV/5k2VX0NoY
	 a68qO88kHOUEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3ADBEB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 08:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168768018872.27957.15968570005960955448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 653b1b8ed5b4248eb4d86e60911862213bb5772f964616e7e927002f0170bd1f
Date: Sun, 25 Jun 2023 08:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687680188
