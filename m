Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B199B196
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 10:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CE25C433D7
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 10:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670236254;
	bh=KmL1WMU2lZXbkRc2ZgCjV0iVcgWWCBJvedbbes8YRsU=;
	h=To:Subject:From:Date:From;
	b=dcXcOi3AU6YJXzYWIE33yQUmyi7kfDo7cPMmHjeqclsOuoy2A85/jKK3bbWlB3Hx3
	 R/ZuJhkVwi8xBHCSm80G4JKvCKakx4iBfY8K0bxfUX49GWDfgqzs4UiJ1woVNOBEDc
	 V2iIsOdcUH3vstX7L3cIBm4WbGWtUhBwQ2SKaP5l1dCoACOekXqDFYS8JTtzD6VnXd
	 B2m85FPLUeCfdRHI9oZw7QnX8LYzhlXVxHO4eaFtE1QCrY3EBglk9dVEj9XxsCNngH
	 uFcrcL6DfmOxyX9MIE/pUZsEq+j8l65bDSy/BDOhXm8D7q/Zi5lodjGj9t/GELQGtD
	 91wdLYF5UHD8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FFF9C4708D
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 10:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167023625432.9520.11426354688537347198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ff8e15a9ba58859ed22771e6c0fed72a518976088ba73e7bd72c2315d03b0f8
Date: Mon, 05 Dec 2022 10:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670236254
