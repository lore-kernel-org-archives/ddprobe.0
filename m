Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECB7B320E
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 13:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95AD8C433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 13:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672664487;
	bh=6hOI0jYqRRpTvhUbmuTf80q0vXwI34R5MQmiRtYD0N0=;
	h=To:Subject:From:Date:From;
	b=GGeavxP+TlBirZDyKpQEFwkpzKsKkD5TnEw+h1GnD0DJoETEl+f4fhGNHapGPoUSC
	 GaqYZT04/f9XTymbfKExtw7J+se5kKLg1Y5hTimqXMOCwfKUwhVyLnrQrCiSDJDZiX
	 dDHN2Urt04kVBDvY11YofxMXkK8pxTnXLlfIpuzhYaExDqC4t/IOJvxTC4LxY8E5qv
	 R3zHb8TaRkmblPQsMRf5x4rlAEr37HD4OREZlieggHllCcbSmFCRi0y/RCPU8r2+1M
	 5zLVre4iq5Tcz0hpmr6am4dEoYhWe/F/cTlTA0qNXZ9K9o1OrTpXcNlEPDiyiDxHoj
	 rPdzp67MyU+Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7818FC3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 13:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167266448744.21978.18269599477996619049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9e979d4cb5034d2782171027099e184821728ba857876d80b9cd15e71290570
Date: Mon, 02 Jan 2023 13:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672664487
