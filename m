Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31A095254
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 19:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFC25C433D2
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 19:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681156325;
	bh=V19rYspbYYGbr430D7V3deIJ0KSdHcNuQLUeTNXKAYg=;
	h=To:Subject:From:Date:From;
	b=Y1xMrPiTrzy+HugycqcgqEYf+3y/m2GAOr0WfLq+yWfndBzP1Is/W4vUOOofPrglD
	 4+j0dBMPGsZsxyv6DkJazV1cupZqygEeG6kHNZ/rb+OCiyHFwulv7gcm805XdLqiak
	 6a8BCMbJ85vkXSJ9xSupHVbllcdzgW/X80+SZBbl039orEbO795aKvG73ZaCTxgmfa
	 uZe2kJfNPqrLjgFZYMFQkKoUk3/34z2ybwnRSq9/9zx2RC8glzHPzkZZ0PLM+SgIIO
	 V27jcpbOsNwO/xg7Gy7p5M1bQkPKPg2Ar5TU2LBnPIcC8PoSg8p49HM7u8NJq27la+
	 C03nU95wDxxhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3A1EC77B6F
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 19:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168115632578.29187.9516737920304277540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af6a8e59ccd699ecc940df6c8474d87886905babec7e9f7975bfbd8cbdf46702
Date: Mon, 10 Apr 2023 19:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681156325
