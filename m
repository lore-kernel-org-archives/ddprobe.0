Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 639EB23A1
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 05:20:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C958FC433C8
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 05:20:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687152008;
	bh=vhqzSksud+6EzA3S3MV11C5GmHP4yi5uuc47bPleEME=;
	h=To:Subject:From:Date:From;
	b=CHT4RMQfPhr6xok0pYHsZCd4McC/J1kKszDlNmDc1AC2YagtkSZMt012R7ZMP1x6z
	 vVxgLcetwK+tlaYUiJ0ZgCvzLLHmLW6+CFU2QVn3SntKDmK6wYd977TiGMkNxCf7Nz
	 4yRkqZQ0JZj/doypbf10vJfLT7J0mSW8Uc3DmPIZFsYMK6y/FJnzDz7EohMZaSxtt7
	 ebX3V5ZSDsXgC8TKR3DjA75NXY5dY2Hs7WPYC6pPVbNnCxr4nNw1uuVRRM/3Ssl0W8
	 VV8fiBc+5Rb77AikC3PzJCignx7AvckVFAN8jtg6bSYR5UIZc+AzcYQLSAc6j/6Um7
	 yDTNYrfBRkr8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4DDEB64D9
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 05:20:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168715200869.1112.11051434729325067658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63c454613bfd1983a048f648afa4ec0e755b151d25c46ed69fdc11b8b6d10419
Date: Mon, 19 Jun 2023 05:20:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687152008
