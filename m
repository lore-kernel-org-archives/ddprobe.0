Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472FE23A6
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 12:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E89C8C433D2
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 12:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675083185;
	bh=zw+pQPS9w4GPLI7IFvQ4F7uQqAu9h0g7RHB4XNChd9s=;
	h=To:Subject:From:Date:From;
	b=Igmol1hXtIcaASBt197B6X0Mkx4y5xbaBsdzy2JxPwXMAvS0ezgVFhTRhx5URKp+/
	 FAaprnrzqH4TYPNzg769L7qPuGfLiun9VViZQbLo92jfFjvV/22FRXOPSc6oe/XvfR
	 1nxBYq4u7bCYqUHspKml4MIlnT28SOfWexuQEU1JlTLUimHWyBQ34IWre/1Oefs7/e
	 S2uUXO3BfBHCmTYqAK/2kwJg3q98IJ/DhRWQ86SalXcPUB24KpGTV0MLMtKmKqEEqf
	 bZPq88okHOtqYKA3QwvdZcIGFaieaQ29L2XYzTmIUURNRHW4IJewy6Ujz2rPuvaBTl
	 +Q369xSlDKMwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C221AC54EED
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 12:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167508318578.31714.8872553812941032617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6855ce082e9d7a9e13207b1dbf6e74a08bffb0edb095cdba1ff278b743a477e5
Date: Mon, 30 Jan 2023 12:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675083185
