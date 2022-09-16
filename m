Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF8F42F27
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 09:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A1DCC433D6
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663320653;
	bh=+eHOX4+73in+g9LNN3nS9Z3Q6pxSYux0VsKn77sVqiI=;
	h=To:Subject:From:Date:From;
	b=etha9twLz7Q418Dw4HOJFzYZEqpP9J4nX/V8qE+2MElySXJcHllswEG2r6UQuU4Ud
	 RKOdJB1hDJ1MKjK1kPYN3mzd6PA5Io3k99pklBwZR9FZBflqqvTrLO9RgxgBGFRbYs
	 bMnogesfhIMyUrJO+6l6AIrEmtgdTsFZMMR88wQXdi6NAbN3CkpQtT5jES4TyN20EW
	 7tMezDiqcPwsbCROzGQe8FIKSKSUkJIJG001Ehnmv++A5qAHDTAQw/k3Th53BUb8Bi
	 C1gvpToQb5coDmvwEIaC1fpmJV5+DX8zQiBseXJ+VzHwbCvV+0j/DeOGj9WGzy+VLF
	 3QWIGeFzvVimQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50CCBECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 09:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166332065332.11329.13307505586578921488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 311f05472997b3a18b9fb127cea4178d4815aa303082c993b093d206affb5b07
Date: Fri, 16 Sep 2022 09:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663320653
