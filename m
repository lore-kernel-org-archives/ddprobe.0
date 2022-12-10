Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA2801109
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 11:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AAC5C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 11:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670672487;
	bh=AiWJVPfj1tdwu5SZiFyOTAHNFfY/cJUvTQknofo4KP4=;
	h=To:Subject:From:Date:From;
	b=cTTsDUe2SFsggYiekhX1APSg3kBY85TmHu+Kgkw7LPVu5TXiSNX+xOcGwxvgeOhNW
	 p6IgY6IArNuH8IUXIB952PyZO230PTZxrlaX0nJDqO8J6IYt+Qs3eMP3CiCQmaeufg
	 cetTXNZnn7+q6qeX1TfyU1xsLcaZ1xtaOG2irdYueX+gZp+8szQW6CEmKuhXaaYTZK
	 rUsp6eA4m5/x3A+bBw2PIDzl2nQe4CmghgPQNdiyaR+PZhk9NU+L5mw3dihWt/3LfL
	 rvdfY/DQRiX7MaPdl33+wTCu+HZ79ejp3gVunE8wMEgMrnOc8aCmoEcPx7mcNtmfV/
	 N09DOFPfqzDyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 609CFC4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 11:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167067248737.9085.16844807983413051556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e704ed31f55291689bf848f3bbfa8840e675210428ec933798cff5cc99c50b5
Date: Sat, 10 Dec 2022 11:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670672487
