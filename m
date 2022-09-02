Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D084010F0
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 05:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 754A1C433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662096053;
	bh=lWDT3+KhpN9AV9qPQvaxzatJtwbsuq+0VeQEyRjfdAY=;
	h=To:Subject:From:Date:From;
	b=Lu1zvRF6Qtkr0doIyQg9By1yUDTtL/6eaIZ4EbT/+/dNbYuWucZd4E61JU7L7BoCX
	 3317dfNrb95TuATXkaUhXN7siOSxcF1Q1ptnrj36LJ02hKGptA82c7NP+sqe8Qs08m
	 RpsoSnSFOiImUYaMAJGHEuKZk0nmdh51KMLSQUYsGxC5sUAJAxrQTcsxMpWX/suYid
	 lqFVjJbocfr6iev8QXO8r3caDgXIbs+l28eXZvYA+fNHba94uHAe8aE/tYCeYhdHn0
	 p1mwDbvZhTZoWW+47eX1dN849vLj6yoQTME6fSyBhndPvY+FL7sUA2cnyy7cOWzN0D
	 uiAgV//GvNudg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58B7CC6FA81
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 05:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166209605335.24002.1564914173895561804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e3b90c255a8a47c2e1a38b25b11e69868a32fc75fb325ce1231e4a7a5af71ae
Date: Fri, 02 Sep 2022 05:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662096053
