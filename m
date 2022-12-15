Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EECBF190
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 15:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84339C433D2
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 15:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671118287;
	bh=UBC180kIi+1qsULW1ODRFECdWPy3do7MfT1KerMlLGo=;
	h=To:Subject:From:Date:From;
	b=r4WuE1KGT3f+pXcE7QMXJQ8xCETAr/uhcx65o3lbB3gd/zczRQc51D8rPBXl+ohHW
	 M6/m5KI2WGx88VLmuYSH5QEbUFn5mEVXH8eOSYGQSCkXTq2U+Cg8ncd+8cclGx/5XY
	 Wh9gqoVedA6jVtUv4S17O7dK+JktSrVKY7yKnoSjTHb5vWnsGRHlU5aLk1orhu2bpn
	 XJKZsvfEjBykzxRVEBqtQ/mD/w++bSgmSmfU5FFEXHUhLEMrptiRZXXJ1rDBkxoq9z
	 Fg+iheS3f2IZ18gB2suh+jUdbpwUwlHWjsNN37q7cjvZjS4ygn0Il1hxyrGJn12X1D
	 vJhJ3m3WWBewA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65E74C4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 15:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167111828740.5439.9815495333986413643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0fd6fc76744904448fe1359ad56e488500994914383cea093138dcd4a83c822
Date: Thu, 15 Dec 2022 15:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671118287
