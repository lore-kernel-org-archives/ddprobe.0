Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02952399
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 00:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B4ACC433EF
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 00:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673050287;
	bh=aVcNXxjmVB7WE7jVP6WVSu4k1yX/YGwqN7DFw5u69QA=;
	h=To:Subject:From:Date:From;
	b=OYVpycVlhfZirzn10O7IN5m08fW3ywlkMpjxNBXmPnUtToAxOq4sp3BAi/y8A/Hqo
	 Pt0kgYm3jsoY4ALcf2qJW4LEarelggJSeOD5DsIQGiEdxyLyUiGAkGM6q2sZxg/Big
	 dJdmafu+OgvBYoBx6CA61STSIx/Z1TXhCFvAypTGGslpR91gYt3zztpcjTQxka0MbA
	 gL4dw3/2INqtDPRNLt2bK52zICeiL/yWHZ/9u3N/OMT0ywC43K1JpJWjMOQDe/2g7a
	 lgojoVGHQKo2d/iY/nQnGgsR9D0GwSKOKJT6z7r9ard4F5LBG7XaXAOTq0fY7CNKJL
	 M6Eufo4j0pZ1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C69AC5479D
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 00:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167305028749.9218.3399227362160987240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2264018c91881b4789f12c34430326ee423ee7166a604c6583dcaa57cd24a3cc
Date: Sat, 07 Jan 2023 00:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673050287
