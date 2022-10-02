Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2C4E1FCC
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 07:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BE77C433C1
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664696453;
	bh=zfjR/YeQvLoNNI4JYVzQuD6N4SgTwJzPHCDt/L/Sayk=;
	h=To:Subject:From:Date:From;
	b=VD/wUkXQUp2oLC3hy1LSq1PWpkz+p0gaJV85xU3csJ6lVSlwa4H9W2I3y5sQaS+4Z
	 YvSV6DINGxivkTCZ76DoD15dGyf5hTWCjHnn2D+6ysAYfiMMm/CPunHmkTjqGL3nOk
	 j2S6E5ZxLC5HZPRHxAPxRreKFn4Bos6ACrKHVNaQdQFkc+TZ9GSDmieGxBd28d6bXf
	 /rMpzQCXHxuvxRyjDzGTYEYy8RwMvOs+rBRgiVwYb37340yvBfgj1qX6ryKg2z7SRz
	 aJtNMue275HLNYNQalEu3J1O7oIcaxbyx34slW5ZNQrNiErsDjnIBCWxUwCN4if9ed
	 yJq6uNLVLP1Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FE4CC433FE
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 07:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166469645332.27197.18392916669309232366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffbc9db4df981f41a887e4ca8d800017bc4250218c0508e7804875d72db8082f
Date: Sun, 02 Oct 2022 07:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664696453
