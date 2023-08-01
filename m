Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E5B93FEF
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 05:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF83C433C8
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 05:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690868528;
	bh=81raHcFYPJnGZQdrJOTtvEUTc4G05t51bQ6GJIhNB3A=;
	h=To:Subject:From:Date:From;
	b=BgSKqcrgHIQUjAzOZ9n+GXfCQWs8FfkA9k9WA5ktXNa56acDvfa1oepNPj09i8yio
	 ftzzHRDEHHyUgvLHYgiCWzqom18LCi2mucbZu8jcoIgTL/F/A0A5xqT6hSgOkpV5Yp
	 xt7aMvF8gjculzsq23tOqwFeuKdNWPmddW/8vDosw+o78HERcjiYB7r7/Zd6+8QYyU
	 NqOX/DKuR2DpvOW+hrgGwaanOczsu7nbIjWw+aa6w/SOmz4J9n7PP0Qvbbs/ywKX2V
	 eXgJAA6nLsuhPeVISzxxPS8empbCvHVNAXTIu1Z/LtT/tXf5ENTHRaVABc6IFaDRC8
	 DH/qUbczvZ66A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5CEBEB64DD
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 05:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169086852871.14918.17343230545844882035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a22e9803b95d15f983baa9baf6077ffe0f06b2efd2d52a1d0c505af4439bb556
Date: Tue, 01 Aug 2023 05:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690868528
