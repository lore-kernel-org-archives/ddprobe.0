Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F70830F8D
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 20:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF8B3C433C7
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 20:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694204049;
	bh=8jXXyh34k8zVHtrD02nlNKczGjqGMqkoTOfzUwct81M=;
	h=To:Subject:From:Date:From;
	b=bCUBs+jXCGQtwE3Cddq2X9DN5Km3aHQeOSvPkEjXiTWUu6kFCQGpnuWMn9Kn0iEho
	 n+ijKdtEO0DA0uhxrObd/oJM/qBAYYkPyNx5n5AMtY4JrAs+A32DO7o3ufer47nM6i
	 uWIwzrJpuXSSQMAy6W3IBCIwJP4bUvVpacQoiseHtmj2oq38xJxfElcu8pkg7jD7Pb
	 zALkFEk7rBjFD8QYjKEGiEpFp7GpeJRLmz7oDup3MItJs3CLO4A6go4D78AqJN6aQu
	 Ru+Gi34Hh61OYMHj9NQfxHdOtycVjf26g/8PrmeLOng45ffhmU2OetN5Jv8mwlMkiW
	 g20XUDvQrf9bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C847CEEB56E
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 20:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169420404880.1736.13154660449162312926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbc5177ebdae3107562a83d79bc54b32d5c6b3208bdd57ee01b1a2770a995c83
Date: Fri, 08 Sep 2023 20:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694204048
