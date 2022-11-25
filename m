Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB2205CBE
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 17:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72885C433D6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 17:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669398054;
	bh=9Ms9wl7YHE4rOwNoPZCzofyCEcQwPega6f/m5NBJg/M=;
	h=To:Subject:From:Date:From;
	b=rOhGBIUiYDefvfgn5YURWw7OnEk28imB/6tWomio3mn9Z2UEwu/dG+A9NumsBxMnd
	 iTBNH1I6Bi5QdcNQxz/cWgzOzU1CfTpldwCAa8c2GFdb5iFkYzG9A+YOUhWf/qiOt4
	 GVLjFMHgJ/wOX1zXit99p/PRcEfC/MXP07zA/sxwyqHtZtqmXQEjjOXcgubdCV+hLl
	 BAtcP+Hqvk4U0mGiI3LXhA1Ak2whZ1Ocz9WqGIenTbOGXYrCMfkX9y3tquv9W3RNnQ
	 y/zCtKcbwHexngl9SxVr2pEwQ3OThBh7lXvsC4e8zMvpaJgC7R9D2li7KYDIN3VXk0
	 +g+WaWOzzA+KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54432C4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 17:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166939805433.11619.5007532594657612922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc647734f331771e74065888acdc9623ed82dd1a613f1e9a776755204f035ed6
Date: Fri, 25 Nov 2022 17:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669398054
