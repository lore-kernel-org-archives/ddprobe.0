Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9CB4D51B
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 23:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73EBAC433D6
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 23:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669851054;
	bh=WgWEl+CRKoLfrCfpWQlgcnFZ6d4nVuldqITjz8t6BmE=;
	h=To:Subject:From:Date:From;
	b=SGhKoXJssphwNQkPUXsvM3sJdmvi9S/X5esWYSZEgXWn0P0VJI1BY1Qrby0Kn7ZU3
	 7+bTRXiae1UOI3zFt3YKqrGV2UtqUYt6yglvzv+oEqRITi4NZITIROLbdYEjRdc+gS
	 +4ti992TQk4ZU27kFHZzTMiMgV2R5BA7SabSvo0isqQUD06mE2fmYDa+tJBez84uuQ
	 wPP2Z/ExAzU0HcX+JR+H+syGg0/FKAcAwq5a3Fplazz1EofRjJM2PmkPDROeH1deTM
	 CSOC/7Qq/AzIQe+yAXXdOxOZXcIm1cUnPCBOZKq15yT86FJXabXf1dF5TnpMc0LwJT
	 RDgdMpYrFsk3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A1DEC4321E
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 23:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166985105436.7586.4440247296839552930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4e010da61f01d0baa78d806cb67ff297b2a6900f10e59281f734fa531453c15
Date: Wed, 30 Nov 2022 23:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669851054
