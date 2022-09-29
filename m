Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C844B53B5
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 20:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79CC1C433C1
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664482253;
	bh=Kgux+TX2iYy/t0gyN78hIhoqU6vBz8LQq1Mt2pi5Czk=;
	h=To:Subject:From:Date:From;
	b=V6ajgKvLsr6EZ1FFEr+7R3Q4iyvRM1Y+b8PvTP/V5WP7HzpGdTHjCV1CpSeLqxoQb
	 kLXJ7sdnRp03jaN3c5mLGi8cQ1eXAckLhhyHrVGsvT7TNJF7vo7kdIYLhf76xViK50
	 sIAZXxpZk5LJUqGN01+xcCBUxlYE0SYWZv/b4h27+ve6C+MMs5GfvNR9jZ2CrdD3wO
	 8RoswcB9PTe0kCMhVsZF3Fcf1dIDBtAulMHut21Bjyat+L3q/k65yDw9kdddpMjTFS
	 0cgaxpJDWu+yLfrf3JsTwNjDgTxrcx7POyNtk6DULyUwIZ0hoSNiiC7xIeP+ZUMieL
	 1c/gd+uDFbYXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53EDEC433FE
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 20:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166448225333.21804.13136312658887065420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d06a5f5d22fc6bd1dfe63b909c7d87c5c6e3a4455aeb04fecd13c55dcb89ca0
Date: Thu, 29 Sep 2022 20:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664482253
