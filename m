Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A1B1859
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 05:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D54EDC433EF
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 05:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680154745;
	bh=9+O0HiWhQkF8EGWMSiKKrTvtSoq68sorTkK4188y98U=;
	h=To:Subject:From:Date:From;
	b=PBA6iS7gLuhNeyFGL8PdzU93M7Xjw+YZH1tFiIFS5kbuQVPJ1pAxEKE5+lOY2rvJb
	 9R/FMhA5O+1R/shbAcUqGiWYcWwI1552gvMtyeqakO3765SpBXrPXuGq9hExnLbRXz
	 s8sbXZv2r24VZT9E0zXqFT09IU2SJdR3qX9wYNBJ/kb2+ar3LbLUk2dy0NsmPd7ktr
	 G4VJqLv9KEogffOGm0+L0TOTxIifr4WrQdvxg2Tm5fd+VVxUYguXaDZ1XCBJu+1yeN
	 mtVJI8zkJQPF6c4wRJjQ3/3AzCTlgQrjfGSPAUB5ePxIB2fJeRCMJKZB7wjT0IMg82
	 AIhS0kaZsFkQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8A93C74A5B
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 05:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168015474574.21243.6427812815343038079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ab7310f82242ea290e334c58f4404667eca4c572b5651f9fc2bbf375a041d97
Date: Thu, 30 Mar 2023 05:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680154745
