Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51A047B
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 00:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0A497C433EF
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 00:05:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677369906;
	bh=QWHoktzNDPIZxqYzgw0OIbbyAC1k3xSATtEdBkYcKAg=;
	h=To:Subject:From:Date:From;
	b=hefz0aCZ5IkGkndERxMvTj27jgMSKoO0S9z4htrl8XQLGU5vBrJnIua/2SSWRfdh2
	 Gr8HSR+DL7W4fLXOqwmDOhPNDW/OEcaQXSLWRb+2UrYDtBpMaFEOWs2fwwmI35xJTl
	 3fMuUd4G7ArJmkQqpSFbnf91/yJpCXf4rRqC4JU4rUoGwHTPqH0cJUCxltEEHE7bpf
	 kLfIQwALwes6UdIT6EKhZlQcbcz16h+tcIiAe2SgBvNlnewHDelrnODzcZXdigYuQj
	 gt328Gf/Iarn/dHDc9ZZTh/G2XM1RcLDs5pcczpBWeg6eeJK3tsVe+CJuMUKI41yRD
	 rSFsccZveIl1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6810C64EC7
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 00:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167736990584.24383.10562590462648174885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c72c1eb7b8774211d189cdb42fb6a4ba54752801d39f3e6c7732824a363490cf
Date: Sun, 26 Feb 2023 00:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677369905
