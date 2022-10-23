Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B101520F7
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 15:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D5CFC433C1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 15:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666538453;
	bh=2CBeRJvFbFxoCNvP17Cse2+98vlZwvEY/C0ax1GqICs=;
	h=To:Subject:From:Date:From;
	b=soQ9Atm0oqynvG7WDE31ZNEvFLlrMx1Qm5mMFhvo0+wJFA0rkA6eJBQed37Rmjn9R
	 0lBjiW0QjwUSmM5aSz5DzOmukINedxuBBXZPQjryUoBkkWPkUTqfzlZa2jvvKpvE4o
	 J1Ue2sVF/MfC8DjiWULi+mhMnfihhf3DNHkD8RThxr35OAbgiYVOGwqs1ZMT0JtfuI
	 YTFCCN0cL0Sq1qF5py0QUxlqaBfW6L820iZbD0bpYqtIlIYVdVhPYV/gllDUQHwdjc
	 ctTxLEI3gUl8Wn5sNRj0vZ/LyzGaWY2SL/CFmI0lJEUzDfWwB4v7/wBKeGzmVpDo9y
	 Qm3mTlwK0Bk0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5132DECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 15:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166653845331.7830.10189174852591650120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bfcbeea7368dfd18195c173b7a04ef269c66ea717f1cc554dee579ba1382415
Date: Sun, 23 Oct 2022 15:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666538453
