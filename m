Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC94510EA
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 07:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 793C2C433B5
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665991253;
	bh=HUXekNWucER4bKgSojtM/frfRus1P2iEYSAxnCxhuS0=;
	h=To:Subject:From:Date:From;
	b=ubg9oTbggfx87/v/ZpKGQhdUUu0bAmTzjZx60fzxxvbE1ilSBTaSYjk7MmhEMCgUs
	 VncU/jGolwqF4cnf9sHLNeK1/a9hfq6OV0cTy3ujKLaxh2N38pGBJ0pAUn/hM9fnFp
	 IOnitigNvwW0Ji+buENY/pElQaM87047qqc2laIc8T5g2B4/Vkc0QwZT8RootQANWK
	 lAo44t6QGyyCC1W8SfA5HLwJdqIalzNz1PJVrfTEP5uKRByUwGzcHY23KoRVbgnXn/
	 cFzG2eHocjp7M+riH8UqbYDjHkXQekxmyTZ3qxeGHSVyhqjkH3ekUwMrRZmvr0BsdU
	 s1DQk2pjnP8Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B782C433FE
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 07:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166599125336.21912.16993681289352963990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 022b3fc9e96ed138429274c05a706b9d3e12da1cf52c95d0747f353717b2d442
Date: Mon, 17 Oct 2022 07:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665991253
