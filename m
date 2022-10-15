Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E755B7B
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 03:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39A3C4347C
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 03:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665804653;
	bh=vDNUBvAh0sMKEWbHvsZG1mhfezS73AMesKeVZ7+yLvM=;
	h=To:Subject:From:Date:From;
	b=WLv/pHDrYsEn6BsaMtNXYYFRjJ+xM2x8kyvWMy6h2504Z12AdzGbmjTGCmlnBqt/U
	 TiwA1JGKPOsOAKvAFWmldVSYxxcY41CE7Dcyy792GMIWm17KdujVaxTAs1l+jQY5r2
	 hMzt9prqRIu9NZR3IAb5meUpfzdGvyjCtg0YH6FBec9DT4s9CocqDFC5YIDiszDN+E
	 YFZDH5rtPTeuZf3EJBS5zNk4Qn9f1SXKpAJdYEU3BumhEjgMQQnfFewEDYfWP+ONLo
	 Cb2wzDBIUOOoxUU3UEHyujeMnyDmUbSsPMv8TNLbQ5Cc4AcfMCez11rPct2TdMkB+F
	 tc61jnjw76zGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 80E8EC4332F
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 03:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166580465350.10438.18333011704000093316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9623b51cc371a6a1d6ccfc46bc1ef6a4cffa1296c693760f4d70527db007ddb4
Date: Sat, 15 Oct 2022 03:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665804653
