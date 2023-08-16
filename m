Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5713514A80
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 19:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5D12C433C7
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 19:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692213788;
	bh=EuKOfCAp/H4QODuq7IQJ8axy64yoeSZc5g+Q2BgsN9c=;
	h=To:Subject:From:Date:From;
	b=eqt2+5E/8Aso2uMf+d1WQHWxVqS949n9R013jfUVSRP0C8VTulfDCobAccU5afrd9
	 RYveIP3yVxJ7N0ZlzGjJYl8W0tg9pA0l2w81x9TJEJmh1YHhdwTuaWYa5gNma+lV5f
	 ktPMA1TrTtOSyJH9VDF/67j9+qgrbXAJFQJPBZOqr5hnS6rmNfaPDMIMPFkifKK2HN
	 sNr3EE1Y10HLdmz0Nqw6OBmxBkbUhSlkabZif9DvGUbZW6CFTMgvapgV7rElyWO+5l
	 tx1FxYU7/5F6DVXhsRCFbLbPEbXiwKqG8trDQEzbwbYTj4l0vhcAnFEtuSTU37KLoK
	 mvj4Dmdzht2VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC87C19F4F
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 19:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169221378869.25887.15361947704317511979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 376f5e8d87c8334834b9cf763199d452039d599115f5bc6b6232d2bd1cf2430f
Date: Wed, 16 Aug 2023 19:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692213788
