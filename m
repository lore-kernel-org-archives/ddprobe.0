Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52781FC16
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 12:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0162C433D2
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 12:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685016906;
	bh=P5uW6FyF+5uKQXllrxM0H2rGfKVNlKuJ2f1yH/vVPOM=;
	h=To:Subject:From:Date:From;
	b=D3amJwlzmcZmDpZia80JyaBpSZ3hIjY+aHSAN7Pcs0x2+rasGyGitTkw4DZW6vnBq
	 3n24K5q7tf+HGSYHx47jq9yasxPO5DTGtZGbUUcNN+RjVEOl5uWULwUvxNAHSLx0Aj
	 dOvN/wAbrovSjyDNQMcXokF/Sx/NGGp7x8htfjd+m6aXLZQPsV4ZpI+mprPsbcwhJg
	 BBP3ONsXkayT8aDgBRJNgOn0HEnc36kyJWmpUY4rFmjNG0kscXltHQ0YLKH784WZ4W
	 nXNgJdlcK/D3KMbhJXafH78MSxvRL8T+N0yoNhZZg/jG2RfkDi87ZxDtn4o/5Pkuqm
	 QmSi9/YZCgSsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2257C7EE29
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 12:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168501690585.22008.15382262936497291574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32632cc6585761feff626d8186239066e7d91d57f9aa3798c11c361a0adea2cf
Date: Thu, 25 May 2023 12:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685016905
