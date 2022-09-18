Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADA797C
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 08:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C647C433C1
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 08:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663491053;
	bh=2NkbP5ONDM35ZTGU3hq8GN3wxGllzEZfU4FZUL6szoo=;
	h=To:Subject:From:Date:From;
	b=dA5GP3yM1VGdwt6qBcxpiFKMNBbI9S23JfXIWgxp/oCO2tyfDvscoKObGbfn01WMw
	 u6tTjblHHuKoW4UBXmbgDDxP9qU8BEZ2ML4BAlSSScXV9QkI5oRPDVQzSn59Nhbaiz
	 Ae3+49YfD1xAz3y8mg32117689mubcExxJplIPsmfM6A529tIucsQd24X2krIfICOi
	 WSKGNdUKrc3i5+uPBVMEHvOrwUN50NJqzFVG5V4yC63hnilPLgHktiIV+aa6cB7oRj
	 6IeFPiMd7FsDdSEtE8nUe0SD7xTNH+OfWjs2kQNNjZvi/oVBZJpDA55qKQH/hQ2SrO
	 2nDjvkTs4oK7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50739C32771
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 08:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166349105332.30765.11382873108155767405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eae85d6fc13a8157576165d9baf80c13bb5238abe7c7791df7358bc4e09b1ba2
Date: Sun, 18 Sep 2022 08:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663491053
