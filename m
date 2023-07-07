Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C5ABC2D8
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 10:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7591C433C9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 10:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688727428;
	bh=rcA9v01w6fmL7At+ZUNtOLV1pKcLmBU71ktDVzcli3g=;
	h=To:Subject:From:Date:From;
	b=HzlbXWIz/jiUR9Mx2+2F1hpS0ZVOzLMA1z8+Zdl4OyuJJbGeVFiciC//5g6U4Zi70
	 71jS7K1VhagaPhKjBFhavxjnp5EOYrifeGa5RoPvlEGNU7dUEYbuv/SHI48mzWG5wb
	 KK3EnT3/cIUXiFMRU9jra6fY8ei0pgreB3SH3xwVcGjkQvitG5GkU0lXOY2/XP2az2
	 eB2mtrgiKms/Gt/jeY0dDjfkiD0jOxe1lhzy0FypLv8U5AH84eHQnVl/F8Ng9fCU2k
	 dflKvIf2hRPKO9ffdBqDiLczPMR3jvO+SYv1E0kWKu0D6R6ChQjgGHWu8Z4KSOIm83
	 GNWnbbfoLn+bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2D62EB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 10:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168872742866.31258.11583569825775497698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29f099516066ccf7bb406ff3be0496630b49a26ba3afff0252e7ef41df139ba0
Date: Fri, 07 Jul 2023 10:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688727428
