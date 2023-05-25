Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EE971381
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 00:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04D5CC4339B
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 00:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684975506;
	bh=k7Fo4+LwkHDiZBwU2EPZUklx8xhsxu+PLwJLa5dBUo4=;
	h=To:Subject:From:Date:From;
	b=mSP9pRlB+CQTIZmVfrsucZgUCV9x8nIngm424Za8SvrqCzQl1rHa0Lv5LYG83zdA7
	 pqBqSbQFpz6HF/BsFqJcrzWJB5r3fpWLoWJ1icMlEP9tr5nOK3Za15mkBcreZNyiVz
	 gQeQe3CGxQu5gUThuIJ+p27Q1aG6I3PoKA2SkeYbQRmNOLLzrQVcrx96X3OFH0MoXf
	 lyaIBHpRJmO2OmBugtA/MmY/8Sq5E1sYPMoj8seqQerzRhqUSr/6hD7HMH2tQsy51E
	 8K2tGxMiE4H9vmp0ple3ayvCBisBNCdh2LwpLAeNwg9xurMQksKW9w964EQbUmHHpx
	 eVXSEVLwxX+Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4A80C77B7C
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 00:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168497550581.29077.1743451163976484178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6034e84e33ac5057e017fa8f0d1f63dc77ceac8173ae0383cb7f8a7f2076e88
Date: Thu, 25 May 2023 00:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684975505
