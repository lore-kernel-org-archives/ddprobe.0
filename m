Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B79E37B
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 15:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70CE0C433D7
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 15:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664118653;
	bh=Zk4B7osmxuUl9khlYcVf0nV3hTrmakrEB2BooUeZ5Xw=;
	h=To:Subject:From:Date:From;
	b=tH/LsyoksckELFfdmjT5OXBnzx2dhyuVoAejNrOXrmgV7qOA87Crcj82ihbowtjY9
	 jzf1BWRA23+sqQclflYGTvSoZlGmxXa4Tgm8X35FQG7znXKJ8Sh9QLIb6opcddPTId
	 8CUEbT9es2qiybPw1SLjSiKcB42J+BzciOMwtEA6Plq08n0w9nlWe6avkkm7tsQQdR
	 GGA6gL7M/ES+acOSRlW3Z6dVXtA0eP15EyP9thrrSdCJd4C1qGy0jrFJgMVhZoCy4k
	 +xMxLQ7QJ8oVYY6U8btNToGdsNmJGCJRS2dWRYG6A7tSTitwbQUYihrQbuyZJKqFBA
	 c4ZgGyWbciaxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56916C04A95
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 15:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166411865333.23417.11734647476075583888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e9ddc099011648834ceefa8bbf37802b1c1912616e2ce34e9c87eef03f7d4fc
Date: Sun, 25 Sep 2022 15:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664118653
