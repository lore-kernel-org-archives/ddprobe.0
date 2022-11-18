Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2C6A28E1
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 16:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 836A5C433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 16:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668789654;
	bh=wTdEUfT6HsF+JK6+m5KxLKLYS2z06XaVxBVxMSDjZd0=;
	h=To:Subject:From:Date:From;
	b=byIRK+mOfG7hwdFsIpXAeZGypJU0ZcwwfQz5HcxQ6KOutfWfwqv/7LJyCGWSmcCZ7
	 Dh2fcautbAoLvKbwAe1Wg2TwBpXyo0Ysia+FezV/8DIk/oJBGM7MI8FOyZPEOeYBNY
	 TVJl49sPAQRhdx4NSDCpIU5mbddahGZYWe42eto1cEVHrLRykYFR1smTNw/izL/gU9
	 eoUx8yGUzdjbeXCXCfRoHbymBmWSfASHHHLwi4Lc16Gav8LRB7cRS5tSiGwbB8vxEi
	 xSuON4wjbXQOFjrImUy3gWHJx8N8YTZuiEACmydYciSFDFW/Rc7hxsr9pMLX5DqFdh
	 viScrxn3ENu7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 686A4C433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 16:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166878965441.3393.2913972295091513861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19c03e04b159bc830479e83dd1426503fa04411eb07754c7f41fefc69845652c
Date: Fri, 18 Nov 2022 16:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668789654
