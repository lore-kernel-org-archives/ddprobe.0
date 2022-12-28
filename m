Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC0A1A2A
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 01:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B747C433EF
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 01:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672190487;
	bh=v6WQaJKj7Gf5uYXzo8fhEYHqOMVHjYWXgXUAaQULpIw=;
	h=To:Subject:From:Date:From;
	b=YXJA8Zy3UlAC77aEhNADvSdTqZAUTgJQ66QLtwxVX6IcVffFiTA9jU79IdxUWHioD
	 KLX8/YB0c7u+t3d7XqZvrKA/LAevzQvpEI5ledUL8TwEHHdq1uxNZQv6nec5GV4RJ5
	 j+VFG5uXh/GLrUpYqaBn+2dY1PkyfCkQcByuC3CSIDzowX/kw82KCHtfjDNh5FuGMh
	 Y71fKIahg07bZhJYOZs5PltfyLXWNCwPLJYwBYL1ljtOysqr7pvP/qBL1GUISqJRE5
	 otJVySGBJNS5723tt0vxcLgyzXJzRTuuGjas8Az4nyXVA1saTeGi7slQogBTfGhQOT
	 Q+SXz06H6tNSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79144C10F1B
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 01:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167219048746.31994.2740537442142968884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b9604040666e18988cc744c7985f09e28d076d1dec73f93533922eae7ece538
Date: Wed, 28 Dec 2022 01:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672190487
