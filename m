Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C93FF364
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 16:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81104C433C1
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665765053;
	bh=7rlyWHlgiN6NK4gRuuLXiiphhcXG9uTwph8KKqs0LvI=;
	h=To:Subject:From:Date:From;
	b=f/m7qNr11d6IqWfwg6DwrJttZyvKf9KdDebKhDbvyVQoMD8s1q5ZZumed/73Vhiz5
	 f35kr9wCBVuba1LFMiF/N/h5u7iYQU53kutF28O90gs1oS+3zbJQWfOsfoxfIXrSp2
	 BIvBuQZ6WTzKp/Kbo2pUq8iXkipYG0uVnhREune06ENUhdrQzxx7L8mW182JcEVhez
	 X0pHA0BuTphq+0f+Q2IRfs+yWrHqdGrW/Wb0JiwlJ9hC8wPZNSWiduXfCsVjLStjCX
	 l9P8PIUGQb8uUJIqDRbPrOQw42zxKmsDSkQGl5gvOUSys9lv/iVyuVcMuer2616+Dy
	 lNmamVEJgF2zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66411C43219
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 16:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166576505337.24975.12471824091458012699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2d4d15a46b25fbab87af65beddaf9924ad8e8c5c54d4810c5a6ad48b424db43
Date: Fri, 14 Oct 2022 16:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665765053
