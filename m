Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD2EC17C4
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 04:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C2A5C433C1
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 04:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663128653;
	bh=NUlpp5fuxtgwAIJe01k2Na7iDO+GmKAyeFcRyXC7lWM=;
	h=To:Subject:From:Date:From;
	b=i2IcpNfvsbBoqRk2gKHTmLy31rXWOSR671Fu3K3iaXIt5LungjBOGE1c+CDYInRTY
	 3kgjXN2Wv1kw9ZfEqDK89jkN5GWez4fc4JeIyz8bNvvE5YLU+SU0OUflFUfFnSScaU
	 tsaS0p9NvVUhjFn2JoCjcvAuTC38jkCZQ21ns9oVdxWgZKXxL3aT9YxpNIi7H3w6Xk
	 Fsn0DCzWc7cFYaoF72dulFrCEqHNVjLYEvM4VLXhOjv1eeF6KvVoP/MN9STxdVSBaS
	 Otbtr0eIBil5VeJbS1JvPgi4IW3Q3/Npqi5WJlCt/sBOBptO/ggvT9mrKGglVGFB/Y
	 Fpg8nGFaxQJ9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E7E2ECAAD3
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 04:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166312865331.3114.2760319053781428951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 215b46f1db01b09d7f02879c26e0dd31067548b35addd7f45b0f18f44c62b40e
Date: Wed, 14 Sep 2022 04:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663128653
