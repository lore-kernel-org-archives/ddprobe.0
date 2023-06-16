Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E5967C
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 05:49:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B9AC433C8
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 05:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686894548;
	bh=QdtPqSEB2deeZoeJ2cglRnMD4H7Z+oXLFaTny237Ps0=;
	h=To:Subject:From:Date:From;
	b=L4Yb/ahOFdBlLwGnnMVeOn3MX9PBbmqaqzST0UStPm+Q72W9hAmBXgXt4w8dea2EZ
	 PRlMJuX+5cbYyDdcLVIRkvKVX67T328O3+ovpXgJ++NbnPBaA7GUqtYyyvjLjhNk9p
	 k9//cMj6Phr+KK2Eql7jcHsDCfWJ/oAdoUavBhYoCy6xgjOg0nSRnz3134S8HlkSMm
	 d4ib1eGhPCdP0L+7tOsSwH/lKVpWiwOAFVX5qYjPkyyyFWDUByc+25C9y1lSM+wm6B
	 kYqgOeNDS/8lL2eTVJacK3Gk6Mrbvf7Zo/krT8bWyzm5izVs/sXNv0WNhciyKZCKj+
	 z5znA0m+rawgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3819EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 05:49:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168689454872.23355.5288429162441796994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7fc2b20c508e376dc004ed928d57f86cfa031b4115818b7804f57cba29aafa3
Date: Fri, 16 Jun 2023 05:49:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686894548
