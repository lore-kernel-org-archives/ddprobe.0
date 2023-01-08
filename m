Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8F3A1FAF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 09:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87C96C433EF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 09:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673170887;
	bh=xWXxYf2HTWTClXODz7lHlnEPVjCGlc+3h1g+e9DebxI=;
	h=To:Subject:From:Date:From;
	b=MNG/nNnVQb/o1j+vVarMtxl5NsFSxMRkAhgjGVpVdjuQCc9awnV2+2hcqd/ibd1DH
	 xAGQmvvHOthBOWdJ6HH/CtMqHuGY1Y5Fawla04T2HZYsXYy8VNkF5auaFxNMM2zVF6
	 u5FzNG5OsjLubHz3+6SuVQE7jaSR49tWSgXuzS/dD7stXGy3CIG5eHVkOyZLxj9zK/
	 /3YOUJVz790Hu0v6+M6/BznQeHkqV3W9BNvswzxrxIE0WHtqNs17t+jnnrc/PoMi3o
	 uHdIaSt93klpimaXr2gWz6bMLd9UPyBOCtADiChFyL/8RuBMtyRvNDY5/LV6p0mwW7
	 FPLoTOUovwobQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6931AC53210
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 09:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167317088741.20065.8438779764897468039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9f385649217d7b6ff4f350573dcae1584d8a067fe20566f340b352791544ac6
Date: Sun, 08 Jan 2023 09:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673170887
