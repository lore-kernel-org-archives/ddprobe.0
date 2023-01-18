Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 052D22F3A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 13:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDF5C433EF
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 13:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674046887;
	bh=g0zro0DJkeeanmuXsybeKiJxAl/jqScpDlql9uvSBys=;
	h=To:Subject:From:Date:From;
	b=SX2gc9H/EopGMRI10Kkr5+0lgePamRos7g5hQO6jkAFNqEyAj6ouaJIN412SgGf55
	 w3OrhNGE8EaEuMogtHMZ3DvZZgnNSa6WETPu+W7RwDdds4guEqiNq8JJiMKKp5cXi5
	 mROcuudK9Y9GzyQx0VnRwW4YtTynH6LDli5hCDCEfLVSzBmXJB9bcxfl5ZeLQFa26n
	 xGpxY7PTFlTY+paflv9aUz3OwCEUPvph/efqQCRvSKtyIeg2CaxNqRVhd60v0TfA3K
	 yS7GPIw78iaBPsVAq6XncOx1u3db80Je/zn+iZUeXjfx9ilVBK22ieBiR6JEHD9AII
	 tILSeX4Rbij0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8202AC38159
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 13:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167404688752.14551.10360493909468187467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ef1168de9eabc308b4da71a5d7ae0e973e8c3ee7db3b4b11f0996c0d095360c
Date: Wed, 18 Jan 2023 13:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674046887
