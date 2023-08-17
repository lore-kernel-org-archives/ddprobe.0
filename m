Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8F7F9D5
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 23:04:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C564EC433C7
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 23:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692313448;
	bh=Stfm0lZITUp/Xv5CksGHUHMccIbqa6ZsU54wZI16BOU=;
	h=To:Subject:From:Date:From;
	b=TRHyHQUqPLon4edyXGbj6sBvGuKxKaXDtowIQMaFhrg+BTs3NNvb3rSXn58o7+bqq
	 jMHJKpTe869zjBK4kO45cFBOLcddfNsZJdG3XWAzqBFApxsFnErKHjEX2uUmshhfey
	 QfySaZCBCKCY4Ur6LEtMO0h8FwBfLBYGPWQVHmr/HqpsSgYwtdxMnhsG9i/p8gmqQm
	 KLApUzMG5ox6mjcD1R0VuNNpUmQibYcBfGzIvwNAT1YhylXEaRRhG4iXfGH4ageRML
	 pwMXECY2wGm5ZEAYwOkLprXbIt5qBxTnKeUryQWKRfqjs+FD22jXQ4CzL+9W87Nbpx
	 OFQermfF0V7ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA576C678DC
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 23:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169231344868.20694.17525025492748214610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31dc6d81609750c804a5452a8b3d9ff2e7b6a20e8ed1fd5c48059289ee5d64f5
Date: Thu, 17 Aug 2023 23:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692313448
