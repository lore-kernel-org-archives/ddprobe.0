Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2D3A7B
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 00:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79342C433D7
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 00:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666053053;
	bh=jLxtfncqmMRQtFbdNlusGK40WzdEiDxMuw1pkKQcq2A=;
	h=To:Subject:From:Date:From;
	b=VmWtAXvEpn2uB76TZ+/SZtkZ0ONooOjQqksPKmDhrjHS6J6vzws31nxlvJcKvQVGz
	 0Rc/vd90+NoiviSBKpmeCNnmu0fKSppUxtrrR74OoVA50E1meEcT7ysrmtwgYmz2t2
	 jCSoBBcMPlcChk9t/i+jjGBQPpwV2SaZIhBx2R0uR4Joikm0DB79lvTCgZRvllltA9
	 rfzfkBp7Jo8hWltlTT2rFg9WXGCFA4gqM19KVb2kmxaJTabrPV2VE5B8paGqymRS3u
	 IfZ5U2omL9wC9MS0cgHisRheg3g24LtGSANKtYmBTOzKQyYfSU1dFPJskuK3KSVj7A
	 djf5tBebY1C1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63B9DC433FE
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 00:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166605305337.32703.17501297533465526582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 794ab775e291e59e87463eec0fce384458f62570dfb5a826ffeec4db4a0b0165
Date: Tue, 18 Oct 2022 00:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666053053
