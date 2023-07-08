Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EE867F
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 01:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3B33C433C8
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 01:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688779628;
	bh=jNpclwKpd0GnTmxOgZMMSc9QXfppovttiEMl9Srfu8U=;
	h=To:Subject:From:Date:From;
	b=V57Rzzrk+PlRV/TRXyGlqkR2vw8C4yQP3ZlWxuPtN12acU+4QGpAX14yPfhWjKqZD
	 scqF4lL0CCoKZLVKfJgcdGGVtsIa2FVM+LW1z1QrK2vWd4FnydZ7BN4y68A60/e7FX
	 6RzhzRlXERqk+9jICKRfrmyneArV3ycGAGI47SPctmSiDIa9IkT8S7j/4FlzTvYw2p
	 1P4QC4fcrolI8BVvtKE869rM73P2awo8KbsdEDrmduUBy0hwVi2J6Wtw8jDkXvhJ0N
	 WvUpFbOi9Nw/YcWeLtbK5WIib0EXE356qKpWHaucFH7bvQX+JGfN4bTbamuAUWC9C8
	 nEw4hLLuRT0Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5FA2EB64D9
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 01:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168877962879.8398.12901842553276997846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2524629af13304b6dc430c7d3a2dca7a79887d952e906fe0df5dfd18b8e7125b
Date: Sat, 08 Jul 2023 01:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688779628
