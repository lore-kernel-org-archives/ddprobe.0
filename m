Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC72362D
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 08:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B49C433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 08:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668933054;
	bh=d+FvIZIFz/Ha5j3S6ORoJfwRYsq8q0rLZW6lUyk2pDg=;
	h=To:Subject:From:Date:From;
	b=fvF+VbsV5TsLhstqLJQ4I46xDaIt4rZK29uKH6SzrZf6fWRa+3OpMpytBr1YZ7E5t
	 VeKeTau2Ic9B4EZODvC633SbWw6uH7/eL2lWlydqaV8JprK7a0Ch2j14kQ2ks56ieZ
	 LX9yDl6G6MDzwFuE0sfW1lYNy07kgf6ctTHJbwPMiEgCM0XQrhvE9V0o2ltgSJp0rs
	 0pJMMT8xlMFBGupwDo2dfexWK7SlbYrpxRccjSIJiZlBlPxnPdSs3cEYLn8krVeBWw
	 NbteEZaBT7fZKTNmBJYPvkq0ufiH4swmT1pY+oCMG79/mR8AhWrhlj56+jeKbA2omQ
	 Z3lFBAVk4BIEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7DE8AC4332F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 08:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166893305450.24119.13431744730454971733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0369b0186e6ae1012ebae5f33512238a725eafbc05aaad377ab4f9a605b1bd4f
Date: Sun, 20 Nov 2022 08:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668933054
