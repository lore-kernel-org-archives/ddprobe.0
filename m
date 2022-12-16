Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E30A8634
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 07:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E056C433D2
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 07:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671176487;
	bh=fUXb3nSF6wEbHcbptKr8Hd7nyAqEOoJYm11lQSgN2cw=;
	h=To:Subject:From:Date:From;
	b=ODaFKUSMve7tm4vEN30X5qaM4j5jDMozsEHcsg0bBV+0T4kj8QreGeyl7vgYv8ZjC
	 UGwg6wL6rlwRKxAe99nPRkredV5mkITFlmQbwsQWnuYDport9Pij0UfZkK+9n9edKb
	 upMfP0LuZ/4ZfkzlPKZeUUGFWyjMfltwzndsQ2NPXcOz/o1C7fjBApntCYNWPfEbpy
	 DPt/mqqJwuSZHhficX2fJqONqZoivRxG+PSvjifMufUX3qxcDEFdqOvyDTNYSkcNTS
	 8LiCVumcGhMlmW70TXvaI+tpQuH2G1nYSCPYruwqOHajXb0kBSB9rQt2/m5FeeUrsj
	 yadStXXB07J6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FE09C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 07:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167117648744.5820.3260807147074780201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f697a1a72ee616cef8f2df9570e3c947776524bda70b80118f1500954df08a84
Date: Fri, 16 Dec 2022 07:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671176487
