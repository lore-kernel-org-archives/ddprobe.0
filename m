Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0F892FAE
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 18:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C1BFC433EF
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 18:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673806287;
	bh=pRb5zUpz1sE2xHXgOVAHSb2Gf3lhuNRjfJw9FOf5ONI=;
	h=To:Subject:From:Date:From;
	b=KxJ3m+XsueoqM7hA34qN5zOzqCMMeClj9dbmfAny9QdALPKLP9Nk1XBSd4Fpcf7YM
	 mpr5kgVYQ8jgmsSRERBzH+l9HAhcNBAe20hqpuNKrR2m9K+fS+3MZg2zsf/p4ZSzT9
	 YfaondFRKAuU+8CdigTOUtEF4xOu9wMPHaF/zQ6uR9oJfyaYUJLIIGMZBVIp8CwdD5
	 v3lES7HpVes3TEnNi0vkKmcRWCuTanaS6Ct81Yazd7xIc5aR9T1LZ7fgW8o/mGiAdZ
	 tZHczXg/97BtSRlWzz5NlTfAkcXLl6F0hiouNsgDBPlakHZS7RAKIEHQZU5X62okZU
	 gwVy6iZ2KrJ0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6262DC3DA78
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 18:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167380628739.31882.4147189626740990096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 087e59397fbb88674a1a792e9d982f7af11a970a86439171a4d2dc3fdd0846af
Date: Sun, 15 Jan 2023 18:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673806287
