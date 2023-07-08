Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A46D10E3
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 20:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB278C433C7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 20:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688848629;
	bh=y8XqOVPlohdPXrYIoSQCZXGjuu1dVB4ilIuTT7X36CQ=;
	h=To:Subject:From:Date:From;
	b=QB+v+WJlEr4V76w9NpFR0Y98e8UHjpPpMJ3/HB3SJwUTTWw4loE4Ln8gbnXDW53d7
	 9JT/Vtc25QN7voU7fEIUM4xPmPghkx9taPPrGreyBggNXl1Ld/a8YEFfsp3e9UfOGX
	 d9GW/ylsHfngSASKOrRsoVPAQUP43ShGltnXoRkodKvOX5pf/DjGqgFtgMVk4QGIZl
	 UhNmsSS6qpPLF6q90NqbBDF7rGrPRBEKDbf09jMRndHyqFWLSRnTxHrVylgwnW602s
	 zdLnL/9EwaH2q1HVef7JBdVliSn4gAMwGyPjMb/zIz/tGY5r0x96bGlIpYG3WisiL9
	 ozVjq9XMnflCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3FC8EB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 20:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168884862879.2776.13586836639158062231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bf15e9f4bd30b0da1af95ecc3444c418f375ca2e7724419408097285434f25a
Date: Sat, 08 Jul 2023 20:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688848628
