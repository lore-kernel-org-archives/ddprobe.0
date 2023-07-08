Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9175D10E3
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 00:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECA87C433C8
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 00:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688775429;
	bh=OYbZA1oILNmlYJe3u1uM1vdLhE1bTewO71a7cf4S8oY=;
	h=To:Subject:From:Date:From;
	b=O8rwlOVuK3k6781NMgR0qlZSJum4BPBL+z4qAUvRW8uJpAa47Z/n+DRSBJaGRtkru
	 /9Ojmdl9JyhGMHJCSPW7RUZFlW7cJwsMsjkSRfuCLkHANu0iyKyzo1CVZ4Rqkt+kyA
	 eh+0xI1VqQrMCOmEjLyDHRv8VZyU27uBvYkyJ2xmxMdFtfyY69ci8FvhIiD3GUGnLS
	 eJNur/m0LDt6xfzJJI5YUZy47Uh8GiJXnE/q/GUh+5wjZrxZEkFHO5RXtI8EcFaF6x
	 M9igI70xR1JKDQgWvTy9PSTrSNIHGSqKBZ0knWMLY1vHGeIdEsTX/Od05Jx/VzOLen
	 JI89+F7GAtVyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C471DEB64D9
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 00:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168877542877.19047.10165096731363248948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b713dd3ab1462e66a42e9b26c0a74b5f3c1c01f20c92d91a8eb003ad25e9b20
Date: Sat, 08 Jul 2023 00:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688775428
