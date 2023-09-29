Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7FAB658B0
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 17:26:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F23F1C43397
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 17:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696008369;
	bh=hnaC+cWNpRivQtEPu0G/c8swM6u5x9d6qxUq0YgBzZ8=;
	h=To:Subject:From:Date:From;
	b=AY7F0wuME6JHn6zSoOcogK6v2HP7FQ/wQ73GLrq5kEwfgFnzEJDR/973xb4E4f3lQ
	 T89WZfiLx9AdlXIFpbBfMY0ax+4Q9Bhg+/akbVOIKTx3A/+jJYrzb6tvkxgA/Lqd+E
	 yLNKCqjxrRqAVtZQn2aVmAcXVbB5OR1kPjs/ODjV53kB70UjwztPcZLHw5yff1JLcq
	 rmv0Tf4RVrD6rlFX7EFhKU7WBC7XefyZvp7w523GLbWpWtsn4Fa14otDD0miZhnLIS
	 OcocShsvrvd0dDlQmB/a+RJudZ2KvY6s5FtH4dsTnPmjr4JoAVvPD63cQ9qXSah8Rd
	 Xh3ABf6lDeRYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A24E728CC
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 17:26:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169600836871.12105.5301073432536997278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c95c58e3c8a3f6e255e5024a47d469112a841f5d12718439beea9826e4f586ca
Date: Fri, 29 Sep 2023 17:26:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696008368
