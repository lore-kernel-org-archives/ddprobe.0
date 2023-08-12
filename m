Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6431E1C3C
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 16:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA171C433C8
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 16:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691856188;
	bh=zuP9RKZ0rVfCK0oSgRf7PUCBZBq4SOs8kLtIn8yaK/I=;
	h=To:Subject:From:Date:From;
	b=CmKo767887dL4BK8VeGNXB8j6BnBWHvPVG7z/p7J8302ubcpptDW03tkrg+K9LKiK
	 pOrX1vSMBEPftal8ghsjbUwTPMRMdtuaZ7NAdoVT+NcNdUy2KNyitnVR99Zl8kpHmS
	 LGZJMN3FYzsxEchuKYkaN7Ai+hvR3TU/a2RFUaIZjp42C+3Uevc+qcaUu7lbamqaTY
	 P4bwIoryS5dh03Fz+30ExOxnc1pSMjDxdwVWygo2rYb1f0h12NAeOxHVjG4Y5YIy5u
	 MerMk+WQh6qpFa9b7S/x8eLSk7oYG4+PvGxJMp2NrkKNQVN4De3uSwO1cDkQ+O224G
	 1JbEkJJAg/wlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9739C0015E
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 16:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169185618870.13992.5951563084591663654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1aa865b724d65fc12c127d5a1f42789b86004b5afbea04313cee95f7d0517c76
Date: Sat, 12 Aug 2023 16:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691856188
