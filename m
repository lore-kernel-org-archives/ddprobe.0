Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ECC3440A
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 05:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T76seVAv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82C32C433C8
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 05:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699767496;
	bh=pjDeYjImVKRtHboAsdpITskwoYlh4uAUoD2mdvTW4Vo=;
	h=To:Subject:From:Date:From;
	b=T76seVAvwFRgkWdifFxqDpogMK0UxdjZ8IWcf5PVBk0mXTHZXHWMUBGl9Vd2vsj8I
	 eUNmzMJF7X4WBQ28FtVmrB9JaW+zy+bOwvS8G8Ujwx8EyLX6MB3TJW8SfBuecVvo5i
	 6WQovY98e0w41RIyx8QiXBy0tRUnOvWewJHMLB5Yhd6Brl1B35qq7FkL+w22A0vVkL
	 P7ilFZVWDGhS/Z3a6xM0EiXhHajGcZKY2WYvopf5TH4Fr9bMdj4TiiFFHubC7rKSz6
	 Awl86S292GgtoYKqK/6yq5gnhzpPJie1YyECKz+sSG0RHJE+22YnRuFFxZA4a92nWT
	 quhk7ZYTxqa9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66175C4332F
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 05:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169976749637.15963.14941104680653311989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e2e97b7a7b87c027fd9d5f96d043cc40659cda6529a3ffa2c8295aa1d2ca2b6
Date: Sun, 12 Nov 2023 05:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699767496
