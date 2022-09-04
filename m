Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6A107E
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 00:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72F37C433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 00:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662251453;
	bh=RBk91iVSrAN4xaFAUY8UY+mwBoqSs3hLfyUj722aCoE=;
	h=To:Subject:From:Date:From;
	b=QPtUhMecE2EKsFG9W3xHMQgYDyPTunW0wB2gCWLSD05XExMgEobW9wXuvqWPv16Y9
	 1AXHrNTVdEdQshSTJySvAmD16ZciCnnIqXh7oQu0i6J5eMoqJVaqrXX/yi5CfV50PJ
	 HP4dMsjzXHbDk9F6DZQqDv7i33471StI1kDakLZ8XTCWbXMlNwdHzq8l0EDXGzfTgj
	 lmRJWaPcd9QttfXZ3Smuh/H5wyisnMV1HwnzMyIeuxb3meGrv67E9qleu+jKBcKSta
	 WUrTjW9ZtFkPCuD5bEm/uvjyF0xfTCSIjt93s354EXSeNV6xQfS9tVS6hMbhW4k+eS
	 7/QHiCHjyJb0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56259C54EE9
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 00:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166225145332.2890.9420277512708297307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17fd64bc8b9c9039f4c6bed8248d2b47d169021b5fd0b02e1416eda1654e5bab
Date: Sun, 04 Sep 2022 00:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662251453
