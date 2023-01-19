Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBAE4A93E
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 17:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A4FEC433EF
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 17:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674147687;
	bh=SlSKO6u2V+76KtQy7hwQcG6uHNLI+V3/YfFckDmLwh8=;
	h=To:Subject:From:Date:From;
	b=vCxAUWo4N21OQYB874aVfJKgopxeD+vGAx/zmifASy2ug/5kzlKzdV/zJ6dTvlq3K
	 V/ewnzBmZB7Qbju3Cvmec6CQo6CHXQCw2rqvitcEhT1teaf6bwnjm1Lr8Hz+Z53u8l
	 9JcgLFpdLsLBpcHH23gxVgJxW99bJj0OanSx+16UsMM55zmEiRjC0hbhw4JDnGZ07V
	 QQqyCxFSgOZytdybSNbrZGXPNiXtswGsKmIqmS3Gdyo4he493LISZhQqM+QfvG36Go
	 Rj5RgwVhnlihK71kxDQnta3D0vFGRnE6Or8Aj5xION3qrIwKdufiZ+ukkx5I1JWjBb
	 +1Cq1csyP9RXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 606A9C004D4
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 17:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167414768738.353.6299368579852340677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de0b8a3bd6e9e0649891ffa27e4135a2e8bde71184c4d92a376ef092945912ed
Date: Thu, 19 Jan 2023 17:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674147687
