Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0D1217ED
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 15:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BF7FC433C1
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665589253;
	bh=kFvYawaOCdijL7Vc6fD9prL+vxdgW7gmcbHB7HKOZgE=;
	h=To:Subject:From:Date:From;
	b=LZMtbNYMPlMP84HDXBuMLFqbJkBLIozTp6kMCJRUZQcQBSLUlA/EgKDlrmsZcC50u
	 2PHWR1UNQNamrOwE9JJe2zmSqXBC4X9+IW+T/e+FDijJXBcR40lDKVeG80W9CpFWaP
	 cJm3he4qbxAMTYU+Mf+YdTnj71nsh0pHmeF/wiDehhCRpiGc2sQqMqNPc/+BTp+Irj
	 47ArkYLNVoi2FzRqAPyVAQXISPd8U9hGZlcdpgLq8sfY9XUZadHOT4smf6mndn1dS6
	 QHHpgxT8/nfiGm88jJmRnpBSpIJyUSbEyIEKjc9CunLcPgohRwWszJIrwV89hkWTcN
	 a55kdl0rWiSMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C39AC433FE
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 15:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166558925336.15427.9668589597747355139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d0806fb311aa7f6a7d14e3e3ee267bd674ddb348a74b3719a6250e5de5501e9
Date: Wed, 12 Oct 2022 15:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665589253
