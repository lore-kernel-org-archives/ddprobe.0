Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437FDAD28
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 16:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0E7FC433D2
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 16:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681402625;
	bh=gRtjYHHrMtrM/BWzPtoescMthCrGUFV1nLYyrD0vH94=;
	h=To:Subject:From:Date:From;
	b=VY9R33EV/vIB6usZf+jQdb2vN3vInRKymckYKxu4V5Iv4DVTgMpNHEH6y+FIHyFjH
	 uXlieOqtYiz3cZcgnG+0OpgRrXgIBCqE/YgTIHqorYA01FmxeI9x7VTCa4HaG6RYMJ
	 Lv8N1ERvqbo8oBy/RvjrEISS10f6b4U8dv0bFUmW8rSG/IN/STuHE3lg97mX9hG7n+
	 RnCy//W7EqGCUS0kpc6ukdpB4JsucGEWvPjGOqszOoN6x1M0MTCZrlmwXZ3AUzsfgr
	 j4FCQFo/LEsdH0zvvzk1ys1LgWYLPB0RXtZhhiyv2HK6yIRavwQ8Ea94y81ts0sENw
	 hKUBBFNSVmMNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8979C77B61
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 16:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168140262581.19115.7090703737868714352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07ba93a5905ed49f20f2b0ea41183d4781bedd3bac8dd2df4cd5307ecf768fa6
Date: Thu, 13 Apr 2023 16:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681402625
