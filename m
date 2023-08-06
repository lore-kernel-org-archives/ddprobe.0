Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53814179
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 02:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2EE9C433C7
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 02:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691288588;
	bh=o99ynVvZ0xm+0oYT5ZZo7AZBDLNlcrhMgGuMfYD3XWI=;
	h=To:Subject:From:Date:From;
	b=jci87otDqW2BlVWmL9km25UnsSOPy03MR7WJ+T2p8vaUiTj9Gf2ozTR8UvhEQ0xYY
	 zrZ0FLQB76pK8OeiSnlbQWLDxlX/NB0m2vxIZncfpg74ohG3zkVrBhymt69igXFXsa
	 8gxaprkIX2wrSSx1s49pgGQBOREcoU1rqGTCUc+tJiGoHzC4mZ8VJhHA4bm2yAXZlV
	 tL2OnDy/peWRwxEhlZhO+1+0q0Sjl/buv5La2SW+TN2qTlgCPY9TebtcG/Ngitpa+d
	 /X+pfPZDwqds0TqAAu9z1duD1k4d4kFQi+v+V6o7egHHSjedCJguMYDmpMMzaXyXR1
	 5tKFslUtgJZrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8845EB64DD
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 02:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169128858866.456.15354178042594125444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b37cdf29fdc239f3ada1aa118ad52dff7ddf794ddf9fe7d6a71869c532f919c
Date: Sun, 06 Aug 2023 02:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691288588
