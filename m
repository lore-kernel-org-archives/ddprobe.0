Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5804910E2
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 00:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7EDBC433C7
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 00:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694045048;
	bh=0qqnspxSsXUuTRO5Kv9WxWbwGICoF0lA96cwmG7+flk=;
	h=To:Subject:From:Date:From;
	b=UwiL1HTFrRiJq4kVp/3uRA9Do4mQIqtpM3yQo+cGYmUMBgofUYPBfKJTg077VTD2p
	 gLOpczrbkHsha18qSpF7QPs3HIr/HmTGr8eS/GOnpBSAC15raP5CoXXy2QoWhabvrN
	 WqSlzXnJNcMN9qxzgM+GKe5slKWB4H/CNJDPubED0VX556owt+rWAr0L3iDI9xTJm2
	 OiCh0NFxNiYsTaO+JEWTWLhnVdggG6jzhr+uAH434S+B3ZABkrSsOV549BxSnYGeoD
	 cQDbw5Xd1FQ4EOeehSnuk1XvNXi4ELUsqga21OyO2uJRRQvN0yIg7mYedIJO4jPPUo
	 b7XYGGE8pcxaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD209EE14A9
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 00:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169404504869.32322.17015266488688198522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b01c8e1f9e2c8ddabe73227d0ce9dd6081a720ff536e48019048a218f1591c16
Date: Thu, 07 Sep 2023 00:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694045048
