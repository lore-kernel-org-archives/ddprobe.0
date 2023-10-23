Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1535E1CF80
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 16:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y2PzZ9hW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 948CEC433C8
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 16:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698077296;
	bh=wUoexCzMfs9wxPoN3Rx4ZhKPgj5i2BWnGq40myFsq2k=;
	h=To:Subject:From:Date:From;
	b=Y2PzZ9hWPwPbOWVjiFKx7evxxKTBf7H3zBY+QAWcZ06D6h1aLIW2J5acoM4dpTafs
	 AKpGZydg4pI+3s0fv78+vJBeGfyCyDRZVhK9anjzNI9kgmeU1mCkyyjjOGQz4VN4Yf
	 w5OC8BPZOiK5euHMgt3rRFzsaBMOweWV+L4ouuNVO5xEQT+D/Se5o/niIPL3OVyuCW
	 rPcrSq+XK7drankfczWz94o1Mu+56iXP3Tocd1ES/52SdCOyX8Xt0vcxP16b8QmjAJ
	 jG2rbuTc56FWTr8doIcb0tNBvIAxplpwGk4jdx/8SyMxrJpOgBlkqr/MAN0dlsJ80Y
	 vNdQn4RcNvdmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77584C001E0
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 16:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169807729647.8483.417603434649657846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d70bd4ac866ae4165a0922d3fa8d9380e35ea629966c7988b799eb41d521d54
Date: Mon, 23 Oct 2023 16:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698077296
