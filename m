Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E445156EB
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 04:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA8BAC433D2
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 04:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683435485;
	bh=LgN9LL41Q0ACE2NEiV9jMhMeeNGdK5b2Q9J9i8ySwC8=;
	h=To:Subject:From:Date:From;
	b=BtaeCywkKmUNK7ig2afnK6X5VSGBZtl6t+lx0HmV+vbWe77B5kmRvoSh8GOKH/h5K
	 xOlb6Hz27TJwRICnygyYDrX074XhViMwmHbd6hsP6W8hH4so1pHszSyr0yDtEfqPHw
	 zf12oGe2iG+P2pnVKW0NLPj9wktP7LAs00mYUHeQWPmBok1gHS+KhXhWmVbmCs6edo
	 W94XfhtPrjEbLFkrsMvKkZ1z0zP/bdCRfRnfDAJyiZJ8Gl2GOqrk5LlXfS056sJI9y
	 4gtfahkJ772uU/FyThG+lzqiO/QJrAY84rJBHsnZlMA7WcslXkasDD7/DBhNTe9kTY
	 jZnGGmGFRwTmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF916C77B7C
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 04:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168343548574.24322.3782059634091021076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 263185405b22fb51f013967baa73e0bebc098cbd011f4eb0fe6c1b6cc4d0202e
Date: Sun, 07 May 2023 04:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683435485
