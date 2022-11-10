Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7F3F626
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 07:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75484C433C1
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 07:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668064854;
	bh=KfrVXS2yXGfIivjrDxjf4Bz4xw3Ch7C2+XX8w/lgB1I=;
	h=To:Subject:From:Date:From;
	b=rMsHNhzRx+7m0xY83SttwYbxWJva5VT8wf40dRh3AVH9Nmb0BbUeK+Qo4YwUW2b4O
	 hYNdXaARw7Abzxtf/oohZB1Oyhk5RKjWDHU6hW8F95aVwCL7a0pnsDScjZZ97yrHCw
	 BZe7ako3UWGxe50AUBepfTQxqnYlsBPP2zmWom2vibPQJJGTq3cfSyNAXY8B86jaZJ
	 qXKIKVLW49HYVE+nxm4FXPgaSK9+x+R7O+weFxxZ1LnSVXzfnkYh9SddGAy77uH9/P
	 6TzZjofC7UXZQSJtQJHvPyvZtRMUPduKIClTCJ8hztpwYoV/UTHqAJQziIz63FrjMN
	 l/AY6UYdMGy+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 598C4C4332F
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 07:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166806485435.25377.9909524519985433273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e67e0b09abf84753bfc0ec7a1529a8fe12cba64f9468377cdce3c52add15dcf8
Date: Thu, 10 Nov 2022 07:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668064854
