Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358A02561
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 09:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8C1AC4339B
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 09:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682070545;
	bh=LndW4voG6YjrprDAmJz3V87DV8zibLU8RZr+bdTSGy0=;
	h=To:Subject:From:Date:From;
	b=aOTQjabKP+gel+3HHyWer44/dhRN8iTCJXEbNBHscYru9OUjvUhcBKbES/KPBTyoK
	 xizkKtAgkRt2lnD6aC7FbxkUtvG6XIOCJcoecg/DNsIK2tZe605ERKvoZaNNyUoilt
	 4TSfgLVc3GJLuUEWBhmSucg3ulJWmjVdfAeTa+gJq2r47lIO1TCX5YhJ7PfhSXbtg3
	 MobBqWx8jju3mfJXyEdWw+fJjzVdgCzK0CNxypX7sg0Qgmp1t7IAW+zecQOMSck2M7
	 Lz1y44NGuX8UjyQk5Chu9TNmiq1FG3eWIa67V5fQvQInqet9YwM10BDjZWoh2nr/Zh
	 NecoE9uWLqayw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE098C77B7E
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 09:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168207054576.22187.6442755451687354713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9b4c6ffcd840fe7bb6ad3da81ded1a62f412bc5dad7286f7791a8e41235448f
Date: Fri, 21 Apr 2023 09:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682070545
