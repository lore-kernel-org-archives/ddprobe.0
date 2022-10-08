Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4A9210E0
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 06:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FD6EC433D6
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665208853;
	bh=lCvH6X4gU2jeQh8XbNrAwHNBsEnol0JH3B3LqK9IjRw=;
	h=To:Subject:From:Date:From;
	b=iQUS2PsCTg+4c4x5s5ZxkI0KcR+kepECb5mbU3rRtJP18B9pZTa56XbpTIFsZcXrV
	 jHGUeSbTdqljMuzfw6v139mnSIuyEcC6y5ZK22JtT4UQNtxIlxvJBpFBr/iyaHXbbl
	 0H76MTR5NgCfKuZK7lEQhKXV+WGgQQXNkmwnublqqGMsqmSUpzp4XKyri+qF2k9Q02
	 4AuJND//ah+QnzTcu1QIXCqSbOYMTO5tW/tmpB/29poowiScaz55fkoj9yWDOeGO3D
	 LWHPdTfwhWsbwiekyXzwg6DY3DNqHquGO4RcTqgeRoIzX0LSqcJddvUCxu1ELimIqO
	 fY3K75tKxkr5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 547FAC433FE
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 06:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166520885333.3814.14488826110189718242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c819f94f860e1e5fc9033465b06d5ff856e930fa2b796c2fd38b29f51239844
Date: Sat, 08 Oct 2022 06:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665208853
