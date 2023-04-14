Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C4A2630
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 03:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 046D1C433EF
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 03:01:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681441266;
	bh=smIQoF6Kbw14ll9SRtFRS4HKobF96QgM4U2NZ+TrJM8=;
	h=To:Subject:From:Date:From;
	b=gcyHKG9E33sx2H+rLs3vIcMA8uEjqMgrYWyMmz6GJ1FJDQ7qT4Kz1gYvhbiS0bzjN
	 05BVn2UD89+Y4YIzDCt8zbP3ojGgBZGpoteDnkQ7wtxhFLmu0osc74b8ro2/NqR4j4
	 T77lF3xu3X0D1Zny4AboWiCXV3rX1sDtjXflM2jx8Rr7ZqnCV7+tmo5m5ZLfcMDN7q
	 7Xng6W4/8+vJVO5lV7U5Y9IR1PDIsv5gGWpHNbfCrOdARkQSWbd/TC/LQBcArC8xM5
	 sn3dCnqU4tDSNVbp6V4zYUXwIqeD6h+FdgR2wNhWNMOOv9IMXxsjl7vkx8Qj+xJfdB
	 ek8KvnqJEiSYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D098DC77B61
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 03:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168144126583.8281.4660852711154759248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ffac4ef37b5ac68a4fe6b3329cabecdcaaeaf56821e249e50e7318b0807e441
Date: Fri, 14 Apr 2023 03:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681441265
