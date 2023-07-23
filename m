Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D52A29
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 05:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7353C433C8
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 05:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690090928;
	bh=+ymaulDWQ8N2L4Xg/O1QmmL4hOl0H9hNFMEJ+kq+8Tk=;
	h=To:Subject:From:Date:From;
	b=SI2TrjnREsk8KfrHKJf3jrdpVrEH9/JknrxKHvIiqGME+tXvg7Sr4Rg9S/EOPTCcT
	 xH+wy8RHmkZWI8NbAgiloHcG/Uk42LXx1kCxdCMLk1Lx99ImzebEYaI90hlWJctnBO
	 C6hdtjjLqY3jOoE+gfMfBCBXl7NVTvzLycs6+a/qlSAil4+qfuQ9XWBmTbVSv3iEiU
	 cZPqAO96ZS2Z/HdAvnUlkNwgRiK+CDJ9SOJGycUeZljd7SJOSc7xvFLpjLeMoOkm9A
	 Nj4lWod7oSrp/GQoI1IBjaJKDoTlqls2AhakGpIIHPxiZRGaFLIzxpAmn3RnW8bLsm
	 12BdHulf/4jRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAAF8C001B0
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 05:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169009092872.27759.9040372297157247626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd7217f7ca080357316fa6bb628d7288eb5cc66a70091610e1ca129e0cc197ff
Date: Sun, 23 Jul 2023 05:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690090928
