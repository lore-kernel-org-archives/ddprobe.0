Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DABA9187C
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 07:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87F1FC433D6
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 07:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668409254;
	bh=NeATCtjXLMObuozOZIpQdUx70r/G/vGscWIhJJNr6Pw=;
	h=To:Subject:From:Date:From;
	b=WKvgd/6o1r2XRbX10/knsz8S+ww641NVkdrSPmanc+9oOLnrpjZ6YXaeYwCx4bynG
	 Iq9GoGQZvFhhsIsoD3ZjxLYjJO5yra1MN/xzWaIsZFvm7GXoQRfgPgTFS0xFL7dOtS
	 frEGDW9IBqevZ3+kChj+OvvybQeaz6JbvMwQeOckrm4tvb6bNqFSxXI/QZ4gfEucFj
	 DS0Jd1Stu81oVSvJX+BX3t5ou4mNOjeQxT6yW5GJlbtpWH/t7Cyb+dGhqORJ8Rb/SP
	 les3+jv1Vdzu0S0UU5ITVJRCTfK8hqr72tizO17oR2NdTHL7+Vn5HV9xMaMqYh6hl8
	 V5VcjZXgZyUBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C538C4332F
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 07:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166840925439.4007.13501829807005109473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56a95e6932ecee15a64d220de445782dc8c79240fcaff0547d091286977d405e
Date: Mon, 14 Nov 2022 07:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668409254
