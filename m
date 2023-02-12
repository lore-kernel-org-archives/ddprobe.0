Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311CE7E5
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 20:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD284C433EF
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 20:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676234045;
	bh=+0HGHOkl2g3qIQruovEAUzWUaKCmzLTa8vAWRSKmdbo=;
	h=To:Subject:From:Date:From;
	b=Of4KAWdGDP3gdHaQH+YjcT0JoI8bSl5TlkrIa0QqVHz3mQJRuLO/Ewy2M51vj3125
	 cUaBisK2CrkGjLMortFOXZ6jS5LBy0Any1sz9u4Lr4rNYIItdEr+IVCRUqz/0f6Buc
	 U8KhUcKwr45G2HWp3E0KZeKSBsc0qz+cJhmYGEPfmKOyfnBWYkk85laYV1JasForCG
	 F0LbMznBC4TGY7H56HUNVYsWxpFUv6LSZMLtXiTaiaRTz8qv16V17qr7wGTgkc6xG2
	 I6zDfg8dg2/SmPRYt+M/q3Z/M4n3bnckR4nVGNzlOWyhx9Iri9NwdLaKhOhXPi2KFw
	 GDDOX81Q0Uptg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B55D3C636D3
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 20:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167623404573.4080.18389611944852955003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3727c0de425f53e0307238163ebb36efbeee8c1e943c3f57f1224562e09fe3b7
Date: Sun, 12 Feb 2023 20:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676234045
