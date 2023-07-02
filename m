Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5608617E
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 08:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D87DCC433C9
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 08:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688288048;
	bh=nXG9jkWBEuccvM7M8c4S2Kh5CULdNfZXyvV+dSMpWJU=;
	h=To:Subject:From:Date:From;
	b=LYC+vO7SRVeJsuspQkAytRyOwqTeucQ/JXT4+WBbMMD/H0wPZEkcbHKHaEBwmGJdf
	 /de7Evu1GLhBy9140Oz1YJr09lnGNTaV1FsWcfcw3StKGt4Z1c1Wcse2pJHvNuavJC
	 cbVaR3DZTCz1KRpEZsLw1lwOB8qqu1CBD97A3JwiC8ObFjSFltc/0XlI9b7v1KR1f/
	 enF2To9awqOXzWA180xY/mbrO5X58V8pObfjTZWAHYskbrMmtRRYGhd5HjuTE4Su+P
	 Gc5FwykbPjqJIp7eEGm00jxd2ZgOhAaQvrYx8PeqcOmB8KXUvVBxQpJntydoTIFFa+
	 kiw2/qv856jlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8AFEEB64D9
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 08:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168828804874.23047.12224745572044996185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0edc22d10980dea0b664609afab6e45ea0a177a92ed2ccfecb64b4f9f8493055
Date: Sun, 02 Jul 2023 08:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688288048
