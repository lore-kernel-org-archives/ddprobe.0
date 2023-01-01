Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E88F923AA
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 07:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89493C433EF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 07:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672558887;
	bh=TGUUOQOg6QX0S5/3kXz/aZZfVJOa0vKiMJqfJ3zdByQ=;
	h=To:Subject:From:Date:From;
	b=sfRs5i+E2/2dCNQcf9Rm+gcpRFhgVTW+ojRqP+pokffZLXMbiRg4LIxUis3dGJJiZ
	 avhnlb4Obg/dwd0/DdDkz7z5tBpPvfyws58h9LUYJ6LiIEka1QJaZ5PlxTxya7lQmd
	 FLtbFgP5B8cIiOr4yzAaDrCqFPvGRuVRQiZ0CPLkc/aG/rX0RvTEsHeEEGE8aexFmP
	 A996SOquZBy4ll5eJmLr2+jO2mOJGU+qXGusBNZ46HGFeRIE6QWTBs3LMMkmwm4j1O
	 tHajEisabRFDwQGFT0NgcSpqG+H7W+/aTsYfCDcHGDjSsSDSPuIZVnnmZY3EXDPlkp
	 jzgemDFbwnWvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AB60C4167B
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 07:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167255888741.10202.10406902224699989435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cadc20c14e13b35367645743d028183167616503b51abe864a2394fc657de60f
Date: Sun, 01 Jan 2023 07:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672558887
