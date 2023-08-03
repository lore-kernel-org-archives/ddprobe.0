Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E7023BEB
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 14:32:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5C06C433C7
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 14:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691073128;
	bh=WkoW3c6VQyCCQBGHuMEMue4/JLhI3iqLWZnrXN7iPqU=;
	h=To:Subject:From:Date:From;
	b=VbEOyVrOEFsvragSLNKU4NUQ92V08+prpot/HtAve9TWjs2taQOLRbeP+fMoI+xS4
	 u1rX3e9qG693is5Epm9U9tqCqIrH+mprBRvBPKxwox3Nx28ndY1aOYZEPeIQox0i0j
	 WuGLp9PjfWV1it0O8a54L9DfxA/onnH61sy2nAVR46O12kP9nPdX4CUX93wwIdZprc
	 Gi/6HPJJLldHTLY8t7ZN1SrXwZTwuk8gcfELcIY8+S2RYlBxxwM5JOBJw/cy+DTjHm
	 ISDUG9Y78yxLcwh8wSIwYkyW+G1He6x1hQu7acDLfam1rQfOKYxj+kLAX1qGuWbFGB
	 KeQzL/R99MNvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A65A3EB64DD
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 14:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169107312867.17148.17410215478267206762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb7d9ea08c3159be1b927ac19a6a1181a2adc7a152549b13a5a6b2dc64405c23
Date: Thu, 03 Aug 2023 14:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691073128
