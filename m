Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2A66BA25
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 21:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AE24C433D6
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 21:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667770854;
	bh=HrfA87Mtz47PD9rIIygU4rbnLtyLZVLiWgLJ0Et9l50=;
	h=To:Subject:From:Date:From;
	b=X37FxxD+opECYla8hE3YCQv3GGndr5idjKTjHEk0ZMB3kqllIwKPKF6vdHb5YZu/B
	 7NrT4MmPcbAQAF4/tNDFC8V8U1I2UIC4HdNI0UESEgHj9nHeDUFOtIT+MgWVkr07YT
	 UO7lST5MYxWv8qgiH8lLkj2zpsxF92UCq+dJS7WODDyobokO63+ND9N83Ijj2R9mbm
	 z5YZXXRR2Zm4nJGj1ScaZWCzpe+xEtUU3s1AhCx4Gi4Lpt5aQqBAuuSXot1HKVjYJI
	 eW+iGptR4C0k/ctVIlFkIpCS+kKmNAHGnrkEkjvvRA1wPzURhRuu4rjPfTxLTII2DH
	 0bPqPywsk0WaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EA8FC4332F
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 21:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166777085431.23571.17179593181000403331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f1ee82a370c0bb632abbef36abcaa7752e596952d42952a0267927d1bc56126
Date: Sun, 06 Nov 2022 21:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667770854
