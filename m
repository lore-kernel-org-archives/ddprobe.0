Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 702028BEF
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 23:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 17F5EC433EF
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 23:06:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682809566;
	bh=ZTCtro0h5LPkI0sH454azdDgo/8Uh2JP4uFeihHCjNI=;
	h=To:Subject:From:Date:From;
	b=CWQobId9EWMH12WsZ6ZtS17P2HlDOPfNBft+eav1elXwQl6VTsjGflgIBIczlI8gh
	 OsMyGTZva5T89/gSvieZpgMYnCcFCyWZVZF5i6TV7U+vrIEmF7MHEbRAI02ewcPU9g
	 b/hBu/U45UBQSUbIpe0OJIvivgnKfDVQO0Rmctyxfpd3NlWimIx39kn9hkK5strEAn
	 xsfInXwo20rpyjB5nSdae02iGiov+C6cQACTg6MxAHTJlCwmDwHqSumEiQ7agYK0IG
	 PeWe7TAfqkDwkJ1BqcISlAhrDBTzrHXVvr3vAYJbBEAWm976E1m/65pE8W/oCfG/dz
	 mWoiRXZbMTn5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE890C77B7C
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 23:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168280956588.6344.11574223132509998713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2912fa1a0fc2edd19c06649a36320bd9e5c6321eb5a4a98203511c162174faf6
Date: Sat, 29 Apr 2023 23:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682809565
