Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F69B2570
	for <ddprobe@lists.linux.dev>; Sun, 14 Jan 2024 15:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="luxloiNX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 838AEC433F1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jan 2024 15:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705246696;
	bh=ubpZfEh6CfbRfoS6SIcPp1bUKpEi5ogX5NuaCd2oG38=;
	h=To:Subject:From:Date:From;
	b=luxloiNXIjrcUdsBdSRyjxDNTPWzNHN+FNj808Wy9kpE91dYE8msPd4XLRpDp+c38
	 Wiur5sjL0yUjwqWLesU3f6xJ/V9ZJpOBS0Lf2Sx/88B7zNPwxYgYl/QmqDZxxyCf4e
	 bfq+6I8YJWqTxQIWVyWXUAo+h+Gz6+X0b96tFklau8QD0Z/zb/ZFcqPodWR8CBN4wI
	 y40P/6UNVPh/B0EZmfUVDOnYNliRyHXVkAohQTt++oLbCCK4Tyy4whyOdBzyvewV+T
	 USXCAN6nJfemwFk5tUbw5Uky6bZ4sqoQ2MumJnKpknhmYsP0rMfnk+wh42Yc1cAnfl
	 xk6tvCwGnBf5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EFF9C47077
	for <ddprobe@lists.linux.dev>; Sun, 14 Jan 2024 15:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170524669637.2225.9126504968505412215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ecbac9af36409ac74da6a92a1256c0e71ee61f05d34b0aedb9dd641bf036900
Date: Sun, 14 Jan 2024 15:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705246696
