Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 054D3381A4
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 23:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B36qxN4f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C58A3C433C8
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 23:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697500028;
	bh=+iMbWMv0Wa0Zd5nlbeubds2ffNjlTK1tKhFYDxIIWqA=;
	h=To:Subject:From:Date:From;
	b=B36qxN4fKatyVpJ4p4KozvHjyUBpuLlhGpTEIwabjBlLlesVAmtqX9kbUv06WwNjc
	 +uTlWJ0P0+5JElQENPqYquuQ335WYL+pT9VEP1GmmKFdHJRsagWphTOBVSVc5cgWcB
	 zitm2ha+UahVUpMj7oOHgygW/QC8Hf4wYxy6538S2oxjV7KhLwL1maKQiMSzs643g0
	 iwVZxPtJyT06gBvSMuZeMqX500ObZ9EI5eoUXhTgJMwy5uZOjhzHq6HjU3k8+NS+e0
	 4d5rb1ImFDOm8CrW0pkBjgL4I++4SgJO8vFfM4XhBjk1xfm/7U8sjuXug+Ps/yYf0d
	 2MkqJJwA0jS6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A683BCDB465
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 23:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169750002866.20029.2219490444323773321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ed6533d3d6091b69ba9884bc28cb8a8efc85c2438d42560b01c024e23d271ef
Date: Mon, 16 Oct 2023 23:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697500028
