Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD8028BE0
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 17:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 784E7C433D6
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 17:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668705654;
	bh=VwT1hFE42rIaVBUy33pQV1Tx+GtU86EshoxhpzVokoU=;
	h=To:Subject:From:Date:From;
	b=SHLltXvfDipk7GJo0Y/fgJbVn/nRDy/uaWIUdjMdJhs0LjShjvdk9iErGimN00f0g
	 q+tS/hRRb2XOEPqzS2Pdv9yHwHYe4CnYcEMpT2VSzKQEqipXKYGXREc1RXBJzZLwpp
	 SGpV898e99WFztNcmlcVLqekx1XRDMmHsNEpszUHp/A+J71G6EF/OkCqbqOkLJdr3G
	 Qv7IyA9E3OVwurdRd9pH5InybtjZ28Q3buaPCkvBI+6uDWR5OIUbNAk3OV8+fMpvnU
	 mUagBLL1ydZLv3GUX7lp8TKPq0Lplwib990/aEsvdLJ/RmvxVbsorcaNxCRro0fBHT
	 c0H+ZCCsUaLyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5989AC433FE
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 17:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166870565435.12497.10199051403276847398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54ac6dbd19e1f319c836a72d633e9e646d49f95523e897a0a811d756e3f79e96
Date: Thu, 17 Nov 2022 17:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668705654
