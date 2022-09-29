Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF0BF111D
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 11:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B31BC433C1
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 11:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664452253;
	bh=1Wu596Gfm24G6Xuaov7MMYzqBVIbWTk1QvVrNobnsag=;
	h=To:Subject:From:Date:From;
	b=UrtfGx8/zZEVJIela+dW32KAu8jlgk0Q7CLWm9S2bRVLuJoHNUv3YJEv3AZyifgvy
	 lTqF64ixbOJ9xrweQq4ym7bMGFUErHxZ5cjIQu9iRvHm0B17JCkimoI60KrrpVEPz6
	 eA4dua1oJaxlvx6W+zrM+H4Ytq8+5TSy5k9B9/np5JjgeQTW4tHVdjLyxMe8W/Je2e
	 Oii2/9lsiZP4sSQKb1rXJ6m70YoaIOLCAjii60/1c7ygeIF0iNyvMlhA/y0PIDxV9e
	 +Fguek0mtkp4cr/WaW3jKwmGMmS9DuXID1Px+SMB2JCVzGKhj3qxvwnEe39RHjQe8v
	 mgWj1hfJLVSaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50171C433FE
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 11:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166445225332.26657.15474140756673940230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f376e863bdbfe35c78c01a4a43192f07bdb4c1a924daa20964fe9fcd7bced3a
Date: Thu, 29 Sep 2022 11:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664452253
