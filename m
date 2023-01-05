Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E300E7FD
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 05:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81486C433D2
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 05:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672896687;
	bh=et6cYmuxpaPTY0IPk28102wKN5Bs0PZdNddZmPOwJIM=;
	h=To:Subject:From:Date:From;
	b=rjJl0eusla8yIsgM02F+21crGb9AFiCHgI6zBbSYyO0bjaQdC/hWZZYVGkN2gsWOW
	 dizHVteu2QHIiUFnen5wrsA3GgnjjklIutleRTvp0NkXGyRT+tm8zEl3Y0sjYxB71j
	 H16vaDn57fkGTrQHolN0aemM8YmkgM50eyhAEXrkYGnVKzjsHwzyJt15JBffEbsbdg
	 7GsJd0gIAo+2HgzIu0NxIJ+i5vh1ItovfOCO6nzjc8qpCye04K2hmNfF2RGnOmCqLe
	 yBZlJXHRCWgt0fB7IpsbsITqR8Yktd4hvaQiD2ea0FQ1lySfLtAB5dCyRNr23gS60f
	 MAwfPXrkJPnkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 638B8C3DA7D
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 05:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167289668739.30858.12054941211994370991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 605b6c51e75e0703874d0ba7ee78cebd43a406f01d697b67c9a67ebb39124b24
Date: Thu, 05 Jan 2023 05:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672896687
