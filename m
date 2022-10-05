Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B33CA136B
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 11:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65B23C433D6
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 11:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664968853;
	bh=PQmU1TYJuvVo86M4EHsrh1LK0qIQe/aw45j/216iFDA=;
	h=To:Subject:From:Date:From;
	b=YUj9nJBpTacjdi1PuGeEwiUXA85nCu8vQDrwNGUp8oAxLSpV7b3Vi5U6y2FOvpwKu
	 krJzIMg0HKlx/HXDbi0YiW1WPmxUFUPyTCOU41+8iCg068rept5jpxesjzFnENMSak
	 dKt6WgRmTaaWjm8Oduoo0SVZK7nV4lbDVsiGpdpG710j7aXNmEewFT0FNlrfOVW47m
	 BwBiRDz1SZPhv2voUszFdtdhJC4OIKRgT6mmt0U2p3ZxUhG2jUWy5KlqALpb6ujk/U
	 h0TE5YFq0Y4VWVvchucCaULFMq/CyXdarLTdtNcKY+2j+wq9qXCVmBFHhgJWoBygts
	 tfC1Kb0ygcpGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51150C433FE
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 11:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166496885332.25550.17822232062110114703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c38a3d83b15df0715a687d4219893a938a2bac1a15b851466f8f0113d3c4f806
Date: Wed, 05 Oct 2022 11:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664968853
