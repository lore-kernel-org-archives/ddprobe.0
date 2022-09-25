Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD2A52117
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 09:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A6A9C433C1
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664099453;
	bh=mdgcgqV8O95MmEjUT/9ag5O5ejXLV8jW4vakotFNEoI=;
	h=To:Subject:From:Date:From;
	b=Q9phASUb6aGKzmu1xXvVQsAnZQTTTdWsDdXSTuTOTT3A/mQgxVmOKeY77wth83JWQ
	 xpzJg2TpPtQFqplr68FjOdTFiU5RZcqQoQoGUvwzl6L5E/pXUZyetN8Zs7rD1BOeJN
	 PkQlL6YdF92CvlgXcMDjr/m02YgTwWEdPLKr7+V1weOAfXHiV0PslLDevq83kFPCYL
	 dL+OiBcgHjHJ9cwj4Ip0XAGg4dBK8zMKoiswqfYccB+tjPjFzq+YWIRtP8IanLdYQh
	 sgc3M1r/niqj6qWdyHlddx+GL6BtcJ1T9bECZyZXmnRih55Gl7oKm4cJ/NJTPk91Ed
	 5raLk8FwiNcnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51B0CC6FA82
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 09:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166409945332.27574.12276550524006317220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da5324a14cd06a46700f5bc63955eecd5093ba0b6a18c835af8429f72e539e9a
Date: Sun, 25 Sep 2022 09:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664099453
