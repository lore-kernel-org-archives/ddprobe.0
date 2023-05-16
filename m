Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DCE61DDC7
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 07:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE763C4339E
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 07:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684222925;
	bh=jNCOYdxTcBXNXCqxd1000KIuw+Sbi2R86/8TACC10U4=;
	h=To:Subject:From:Date:From;
	b=L5BIGlOV/d2DpT3IWCuoA5xVKhPxKw4rPQ6Q5sW9WqsGzTTyHzfg1O4yYJ91V49lj
	 K1vKiqR1ET9LXUJpnww8Ktb3rLfcmXIp3R7lZ7vI3qt8uogfGu4ft4Ol+EDf90flnQ
	 wuNQ8HC22bS/xmWF4lYknrBwQ92TJHTVRjR9u8xVPsvzXDkAslnJSbIgEbl8isocQF
	 0Eb7TTnR8Sh32iNX3eI9MsQW9PzH+6YhAp4opWtn2lR03iG+gt//+SJtHzyS7EIcVl
	 hSUhRNuoFgozEnyZAxThcEtQs7ROmrOisOwX/wxeOrPd/Yqoe6Fc1uTTaRXLtc5Ddj
	 h3EQ3ICS6GdVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE8D4C77B7A
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 07:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168422292575.12199.16148017099289981051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fae90b98bc22618001f8bcecae692f76d1f42cf7329eb9f97bb9fd4290a688c
Date: Tue, 16 May 2023 07:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684222925
