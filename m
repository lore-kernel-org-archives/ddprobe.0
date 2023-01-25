Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A9FEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 02:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1897C433EF
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 02:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674612185;
	bh=jxl2l8bJ4HG1fI8C3s/sFO1Rcq9TpWD0EmURA04VyCI=;
	h=To:Subject:From:Date:From;
	b=adUgj3xaXDv5N3BtzltnOmddnwOFP4OtEOtR633hv6gVko5WY5t+Yywfix7N3/g3b
	 bpHgwBuY/0wJDZTKIVsSrw7+olKm4w266Oszxzy7T81O1d+g8yhinRIClfmK+5FvNI
	 lbfhcFaBSkywCt6KbvzVWaQ7Hghr7UBGI23gbsyE5wnB/nsj1WDRAuTflRz7G1uRtl
	 7v0vWquCHw2VIGf1rac7+dDJwlzYNias/QUlzalYMpolRapxi3HmxIpIIm8SopDLNi
	 r59Mx3dhGtDAE6OHBkHhQMAoJa8ET6/ET3uheijpAc0+70JiuUQsl41EqP+16Zo8kb
	 0VGZ2SeRO4Bkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9E2AC54E94
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 02:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167461218575.26193.4430461157573496019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d6f03708aee49cb47589e04aea198c828d41e108a12f6486b77cfaed258ebe1
Date: Wed, 25 Jan 2023 02:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674612185
