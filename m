Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44C767C
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 01:39:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4D96C433C8
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 01:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689212348;
	bh=7buS6zYXPs9i8JyVxv8CA9ipFTvlBW16UgrjFodSYkU=;
	h=To:Subject:From:Date:From;
	b=kEo+jzCll/P4585C/0fkjt/R6xI03wdf0T10WY55QWkhBQm15z2M/5c7DeBxVOl1S
	 tgTh6lNyf7oKNfr8e0LUBc5MJ1RT8GJmRe+nP0QDwMc2+unhx8tCay+RrVDntN+ncQ
	 vbZM90j9quxf3oXVd6MghZ1c9E7lrR6BkX0TW0q3+gLneLr7jvuLHt9SoI6d/eEB9s
	 qB+u835wmjXNKIbyoT9j3M97NygChMlIc5xymlIfKs03Z7Z0K0NMC8Usihl2JjN7/s
	 t2lIxS5nOeVv6i7+oXwRGcV5RF1lQ6l8HGgfVv7Lo434mRQX4fVLoTmuGIdZd7ZzRV
	 CpKrSim8l/zKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8951EB64DA
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 01:39:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168921234866.21342.16463856255982031338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32a17e13a2e275f5dbe1721c872ee1233e2f067846105c5e3d35f847bc3d8a6d
Date: Thu, 13 Jul 2023 01:39:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689212348
