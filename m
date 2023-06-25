Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 524CC7C
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 07:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5631C433AD
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 07:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687678988;
	bh=PllIGfsS5j/2hiyWF6RNTVUlkEbe7Sld1kKEuHVG5Vs=;
	h=To:Subject:From:Date:From;
	b=W91zBG7eFyi1HazKL7O8MHGF3Fa1jo6gSuDF5SlT6CTZLETXQ29IzxKo8eem8sjI2
	 3jfVRi5qWapcaOrTuKTZrKUNlS5yPA0CV5hPwRA1HFi2izlTclDSG+wmSCp2lalTBT
	 fjWMaXTT2D6xi5PBGKXTaoQ4ZWh2j1c612q5ki6QwVHoeZIYTkVHIJAqsBFUxayRhf
	 vZrB4JETnCtbKQ3t6SPBlXoSOO52I8wzpqDHzOJJdpiwU7cZPKIyg/YrlG8pbI3dV2
	 c2cEQOJAotpLEEg84bDjTE0F+cYCjWeMT/6GEkw8OXbSdQST3VJzvNM5FGwFFdFl7C
	 Nzak0/fVDdCQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7EAFEB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 07:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168767898868.7406.8088348162431841800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b0233cbe2fa99b42ce6716d462004610a2836e1c4aa5c462dee49d6bae05b48
Date: Sun, 25 Jun 2023 07:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687678988
