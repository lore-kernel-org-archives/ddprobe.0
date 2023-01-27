Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F03B28ED
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 12:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2192C4339B
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 12:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674822785;
	bh=ANZJHoqtbpWVdW5zLxx4nnLVgkQcMr1ZQa034tZBbbQ=;
	h=To:Subject:From:Date:From;
	b=fo7gSOZNxgcyPJdDcXHZSuLacy0BXNQCR7ljN2YdWHWMpvUq+usA/8pFPKWe0TkAa
	 U3/LtBLwX8mFRjIwQsHOH0lqcUlEOa/02ZfDToCL3XjJDLby/cPXWqL48FSRokkngQ
	 GeJO09Hglvdy17/FndMCCLxNXZXmQHdMh5ws6Lt/VsHv82MdYLzmtiqig4XKkReRfH
	 h06xrp3KhWRqkVVih4Qnmh/jqxA2IJiIdVnkml9gmZb467SAruTB51MxpwgiXgt8+a
	 Mf89yhBjuUbUbJwQF2vmbJ4Byo9KdDIfLzYOBRx36pN9tlHe9q0hIKMi8x+NzdJQDy
	 M1CH4CKiJQ2WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8727C38142
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 12:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167482278574.30824.4566675484660218253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 247821db960f09630f698d43605d6a7234c8122f23d3990d5b670455bb34561d
Date: Fri, 27 Jan 2023 12:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674822785
