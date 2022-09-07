Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3B795C91
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 14:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67A54C433D7
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 14:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662560453;
	bh=KUYUkrTeVkoXLgnY+/+k5y2Hxxyt+sHQV0E3gySBsMQ=;
	h=To:Subject:From:Date:From;
	b=Q6EaaJSbLRKWDjMkRuBvFBsX2/yrGVFjFcWz3hiJqJwy9BYsmadGmzqQa54vFV8hF
	 c6VpHLY7PrsqRF6bo6GDoPrM6znAIGX89BIjrEiaOl4FWLb8wLbqPGZ4p6x2JlhzW7
	 t/+E4nb5SEYafmrNrUdITHNDQVJ5F0XeoysEJS/Q01B5K10iPn58A1KWQn5VOu/Xag
	 MYIDxZhad/aimSNRKrJKJnYAaYzsZF/HJ8vp09+CsrBSfGoATSrgu5XCCyrPZbHL/m
	 btsaAIP1we0ZhEDCdOxCgh831dUr2c0mza5uCaX6xCjq+yAEBsSB23voa1EE8wQvP0
	 yJ0xbWT+fUElg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5287BC38145
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 14:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166256045333.30326.10279458637835643480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40f49a43402cfcabd6f2f0da8ee6aa7b55daf632067f974c686b0cc6d1339c66
Date: Wed, 07 Sep 2022 14:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662560453
