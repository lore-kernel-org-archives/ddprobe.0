Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 458A77E6
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 02:04:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDF2DC433D2
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 02:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678413845;
	bh=EPh8kH4kU55v/abdqIsjavAuaVtC2Crzs20LflGMdTw=;
	h=To:Subject:From:Date:From;
	b=f3CI/aT9DwW1YGiu0RA+tFFuYP72GwQk5hXj7HZT5WT0Em7lJKGJyYfvDghTPNGxV
	 +J4Uwaay6WEe2LijhtFukvb62ijdi4uqOjh/X+5RbNSzYPWiEaJ87O/Q4F+YpSGcOH
	 4eXAp/8zA43ezxvgyXICfSCoeu495EsZWjOUebyZFoUR8MKkTbJva/T2oF+SX8utWM
	 /LuNe1BXibGT5Dgdu/kwReaod2RbgFBSoNNx14wWPru8i6pSxoutNCCxR7U6lDCMbg
	 AFPY7gH2wr/08PXd4tFT8WP67Ovg3EHEGwFurKwToQMnNmF4p6ftpKy9wSs6e/lhaQ
	 /V6197ImLZglg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C070CC61DA4
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 02:04:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167841384577.7356.2647008053434034334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84ee6c1b7b03c971ce2cfd2184985188557a47b7e6c261f44fc58d9d25e755d6
Date: Fri, 10 Mar 2023 02:04:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678413845
