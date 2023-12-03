Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1016EDDCD
	for <ddprobe@lists.linux.dev>; Sun,  3 Dec 2023 16:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W402yimJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81A53C433C8
	for <ddprobe@lists.linux.dev>; Sun,  3 Dec 2023 16:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701620296;
	bh=iBSwaOd4CbAvIJheoYYgoi/pXaTLvPfhHegtQt7l08o=;
	h=To:Subject:From:Date:From;
	b=W402yimJNez5Eb9Y+1iBpm06oI1Ja9lJO7mLPdCwexS9cwYekO0xZbEBDcA5/uvbe
	 jZiLf4tNU2njJqPFbFHXwZIEETUExwispC5gZqnPF4Yq86opt3qxEmsLz438jkudpn
	 B30ewCVbZBErB1nOMxPAEdJ2d3WnfWYQ9asESd4oW4N0UDhhF41qm6HIgHq3bimK7Y
	 KCxM0OSAVEoCem+WniBcKcyumOyC1E70a9g9fmnzJWU4QMm8ye50jujSX4fN1u2Z4d
	 De4U2o10o/Wvf8DNONlhWtuhV3NJ9ioueDBLZg329nzaauekavI6Ne8IOtz0IJZhMU
	 S5j2yNpr6QPsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 653E1C4167B
	for <ddprobe@lists.linux.dev>; Sun,  3 Dec 2023 16:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170162029637.18359.4485147709516156184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 875be6bae9518f60e6d49260b29fdfdee256a41ac1682bb784aa0f2a59286a6a
Date: Sun, 03 Dec 2023 16:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701620296
