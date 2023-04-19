Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3915F2564
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 07:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAB95C433EF
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 07:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681890845;
	bh=HMhp/26WWuSis6/qRGn46eVV+rcrSGmXKG0+v9Jk0R8=;
	h=To:Subject:From:Date:From;
	b=R5Tq4+RdZQpvQoGINOqq7pt7yx0NpQbaYQPMfQ4tiLwi5B1vDfvSrU94F/dmRFvd7
	 SF3TWTETsCLXuOOkDNJkIOM/iOaUZTiBB/3qs8Pq0p9K9MMB5DsncOGo3voMGnkRWD
	 43qmaRSIxDxxHfaKplKT1kK3h2k0rBqoOIsZ82q48jyrnjCchUcb1AuAlMHUjfP89D
	 qTyRkIui3d9MTdC6R+VoHF3m1U6W4q8F5nnQWESw6/l9V4Oc4UWus5bYa5mN70OEJ8
	 od3IhJ+OLhVwZFj0ihrAeJilR/pocuVWgFZWM47e5RIe9JBJorD1CjNgU0mDiQzcpR
	 YWw+vIRrTvtyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE7EDC6FD18
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 07:54:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168189084576.14913.1526449005639279316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b77908b81d9f0822f0f728b32fe942caef717bdb8fde5ecb47e25a33c6cc304
Date: Wed, 19 Apr 2023 07:54:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681890845
