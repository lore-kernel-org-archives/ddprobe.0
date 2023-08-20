Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67D6323DE
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 11:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD391C433C7
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 11:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692531248;
	bh=oFEJ6dC3+XLGNzejTvQ+bmb2m/gExdtCGS85NaZgSew=;
	h=To:Subject:From:Date:From;
	b=L5vk14LqBb0ufS3aOBUF37y1IUBzJTSKZ0ux9u+LZ7xe+1uNdq6++JnZzYCg+rdJt
	 GdnLvZVFz6Q3o8+isLWVwxiOS1TErrZsrQKHKmvPkHXxULE6TYLJcL0FuW+irpy7KZ
	 A0w8u/F5MpImfIPXwiMtTWzt5Zme5+qcvFc6+dbImZ4qZvfoe8/rWC/rEgmKuf8LP7
	 zzauz0AgxpnoMeeR6gfzzJ1gHKXWIGSrNbPS7hplFFbsrLWfVclQPpMD1wemRWbefZ
	 0Ee7QbkIGvwoAzmX5m7m/Ge1UkZYLzJKJQQfafEYSU+shFOqCQAIXyE5DJVRo6pHwQ
	 tiHx0y/T7MhPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1426EE4993
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 11:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169253124871.23514.3378770565596420487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a1bd63742c53002f589472216fb3d5c8b44aa93d685dab4385688c4e64ef1bc
Date: Sun, 20 Aug 2023 11:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692531248
