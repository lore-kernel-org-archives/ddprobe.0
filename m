Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B49157F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 22:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AD19C433D7
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 22:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662935453;
	bh=06spbS9Ox/GIiRtcUsO2gKYnhMTm3oCM2g164aJr98w=;
	h=To:Subject:From:Date:From;
	b=LtRowLcYjx696VI8XbrlWUAKOTJTZRTXbK8Uf0Xs9z2ekoY5wD/qS7vcsQB9CDG7j
	 cyHm5meCP7feFvu/T7OhYCNx33jh0a57eBn5mLIte4AN9fuYpUqJw5hnDyIFK2kx0M
	 jsuL5+CeZx8DwyYKMxzGtVTBqDpVZ/avLEtIZun98Ohq7Jty61bbtB/hqRceHD0XNk
	 5Pw0Au0+/xQo6BcWyER+szuNwmxtSwkj+zv6fi4hDc29iAjaE8c3+4elKJpU4WHJuk
	 DmZ6mqYIB4RtSwTtmNo3xYA4C8qf2mqwvJHarokZAMjmUJGufFKSsSOLg6BY8vnVRy
	 D5+1KnpqM33nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5169DC6FA83
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 22:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166293545332.16266.16947931500308898978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1397ca3f9e8feb1515d5b0032e43944245f48778493f68ed4d10c80cc28d814d
Date: Sun, 11 Sep 2022 22:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662935453
