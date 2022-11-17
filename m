Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7C7D8F69
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 22:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69D6CC433D7
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 22:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668722454;
	bh=uJ//pdqIzW8tq6EXU2l6qKrQtOEkIvJHB2k7SMpxXQA=;
	h=To:Subject:From:Date:From;
	b=rysg1dSVVPGexf/8FwtAiBRcCJM3u5NDiLh+I91Q/2aiut6BoXnlDLqVruUlP/KyB
	 TOQX5uz5yNcvfAIJWNwvCmu1QZDlaBiKoOPnSw7HMZXr6770T4qQdnh9C1kEwAQuE6
	 rh23j931BW/KDq7a4orr3J71U11164JEps4BoGtIMJ5ynoHoV7cD4Kvs1WDpdngPfw
	 7kMeVEek39xscVsIaJ0ELStF0jIo9o6alMDH4Jspv18sCIhjYKW8Was0UgAxsyEzlf
	 sOcEtc4V8sZFFBXYYDrrUtJW3WzkB94DlvlFR2fG0Td+YNPjGX4Ai0UEhTTFTlsNl/
	 6VTZLZwihdBDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 556E9C433FE
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 22:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166872245434.29724.15281995406310003533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85fa7252e90d7302164afbb08278c6e09430073097bbf714e3145a0ec2edc578
Date: Thu, 17 Nov 2022 22:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668722454
