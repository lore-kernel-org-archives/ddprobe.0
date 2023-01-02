Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBDBE7C
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 08:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 893BEC433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 08:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672648287;
	bh=inhpjbUV0rF+bHYSO89yv79h9//g27fp2tft5TfW30I=;
	h=To:Subject:From:Date:From;
	b=iHKPoiCihphp14XfP4jezIKtcZdc3tfB/riOfb7yHAHY+4Ydq8MPaIPzAa6GnFjiL
	 fXP/3H6xdGPGjWsKPcDY7fnGYHZFcUWCeb5hsvJdWPjIS4JTzkliRlYqly3Hko5jNs
	 G3qzwL7U2OpVelG0wKRttT4Ci2b0ykpATNCWYZ2HvUS6264+06Fj8ouw8cvg5j49Q8
	 o8Plk3qX9l0/NneIQs+vbhQkw2CG9U3OmztZS3IhIh4yITxbhVurKyOexwBm1+n4bN
	 kkusgG6t26j3G7lSIbXcdIj0IaS4axWrc/DvvXfzCaQn2huaZd/g3mhGZk7UNfwtms
	 uAfXPBKvMnHgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A92EC4167B
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 08:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167264828742.9336.1992361128070034503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ae1fa4705ca6467e0ce764d7d42dd273850ba7ae25eb4b8c52bfd6466e53bca
Date: Mon, 02 Jan 2023 08:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672648287
