Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0587E6
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 02:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD561C433EF
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 02:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679968985;
	bh=2ZvPf64ow/LmPNYMwzDfgSrve3GlXle5wVjo5XI/qDA=;
	h=To:Subject:From:Date:From;
	b=SxRaju5IFmFWwLEMlNYw5qy78NRuhak8rtXklx0eWg7qe61YxF0r48fgPaAxViBoy
	 +Pzq5p9MjtZmzWR21JqiJRctug2Y1Ajo243aJj3cQx+cXonPaNxv8z8KSPT4iV+5R1
	 XU+ET/Wsm1Rn2Gq4/aOZIT04UI3b7g4xBVfSM4F1vVe3cFnm0ADAZ+rbscz00Eer/a
	 5DhwVDaMNBC8I/36cHFr+M4mb5meDFn1uh4mYpM2E1X1HQLJUiEHBxetRLpCIYebpL
	 YawRVoI9Swc+K7uYZ/teukNdpfPhwMovw4T+paS/b0XpdR+CZPqdl/fKSbvgWWNo0g
	 D3xq/fyKW4RXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0F13C6FD1D
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 02:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167996898577.13375.3066632042993768792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a1b58f90396cdd6bc46f990e93b2d02254f020ff89a60a127984d1bd7c7352e
Date: Tue, 28 Mar 2023 02:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679968985
