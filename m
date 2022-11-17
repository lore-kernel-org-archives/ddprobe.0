Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B135DEB07
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 10:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B893C433D6
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 10:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668681054;
	bh=uLXzwhVmjlu/H/Q1pEevE2SfhjLgvAr+yN17uIcBe2A=;
	h=To:Subject:From:Date:From;
	b=VVUgFjqAir67Y/9oaRou8kirasGkXWaW52/EZrqBJO0oFW1MZPtT+8bqb/59px4no
	 WCk2jx8U5uw5cUhDX3ASw61PM31Kue+1cbRbaLjR82x7ibOgCDo89rsoil4OT6w7Wb
	 +j+tF5JHSjG2xRE4rIRT3/L/7F3CSGpiloKwgdNI62sMoNPELjCgTeP6wh/Hj/N3up
	 94AJNT5yExwaz1UWnyKEJ+CXHU4NG3yDk3dJ1gvStnE9Vz6eo4QnGVZ4ZM/qlww5l0
	 qELFtAnCaFl6i/HFvwkNVUhIjDKW/1GU3w4QnslyMDlEH6D3+GIH47Ril+ews6inM8
	 OvjDWqj5YGprQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55BDFC433FE
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 10:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166868105434.28667.2640299263206551845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60a1f174e820eccc67b39bdb0700821e67408720f586ac87105d5796d2e23c76
Date: Thu, 17 Nov 2022 10:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668681054
