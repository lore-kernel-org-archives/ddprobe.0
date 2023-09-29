Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 492DD11730
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 09:26:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C541AC433C7
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 09:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695979568;
	bh=h4rkV8MV6Vz/KA9i60cy8rw3kRXRFSlUxTuq3HN+wcQ=;
	h=To:Subject:From:Date:From;
	b=d3Jsz9bUPcrSt7WH9j0AjA4KZvHYzzhzC5Nv3eL76viog10ceHHHLE8iN+AaLicsr
	 APoODCOBwIQbTdychWIQ7EX6xSg86PoODq0WpnRvZgIg+oenLTa1VgrQDvrRZTTVKH
	 VC5No1Yoevd/cyEEFEsQsq5TTEKjq6h8jKv+AugcQmKQ4Qj3WAaWfQB31pvIFst6Qy
	 DmHlqtOO+lF/MBhjndylzQuCimyDmuqW37CtMVzN24ycSM31av1/7N+H2sxbG+R7Td
	 auT8ud8pM8Ul654ETzB/ZCH9o25noeFa5rK/WqLNycSkG5sN6uxGp3Gzmxm5bwNyCx
	 bqF85sFr91OnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A85D7CE7B1F
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 09:26:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169597956866.30030.11171012192956591176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6440d6b57e1640d8c6bb99c8760c6bf71ff565fafd69b7cc589305009926b19
Date: Fri, 29 Sep 2023 09:26:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695979568
