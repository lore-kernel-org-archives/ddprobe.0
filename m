Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B05C10ED
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 01:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE031C433C0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 01:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688001788;
	bh=dlY2cow9/grzT8SjGSQeUHYLc9lfYFWY9mgJ2tBeMsE=;
	h=To:Subject:From:Date:From;
	b=JaVa24vhE0mAo/2BHSz1NtkBoy1eun9PoPkau2qF5Gd8XZ5gTLoAcwg6RRAsPhl4m
	 S3QfMF7UoYhZwJacvFBuPcHlYuNrWPsv60KP0xFKS3dDTVpqo6c06EjKSx697Ry/rs
	 VU456j6pCN9B4hsjk8cf32zsSk7XA20Y8vEKm7q0hpd5rzmWAYaHbo3tGJDtTm88A8
	 gsROswilqcFmVqukYGCR7uB9mqA5H1q8R3cKcWbmIbX752p/KdwqxapBqSNOhoF7Sl
	 QCkGVJOCFMamEQcOL3ia7QKnbaOnnl103fNSCwKjUMONvitX/fB3HeQgDIg7HdpGVb
	 kPSjwf0bk+fUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA5CEB64D7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 01:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168800178870.22026.11330784814340996236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e47b0b450427f13a5a0d26b9f7aa7b82645f19924b56795c748b0de5083ffe3
Date: Thu, 29 Jun 2023 01:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688001788
