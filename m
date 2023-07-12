Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C25133F9
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 10:09:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D56D2C433C7
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 10:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689156548;
	bh=2bKrGAybhCkOKlwq+f7apdSLigEw9uMyD8K9SK2Sv2w=;
	h=To:Subject:From:Date:From;
	b=Tjzt/VqkTkEhGbCshJoXNPPLpxUmVeVEiOUv4pe7KQQx/lbqMWo09Ny9uOFYk44bX
	 gIplNF/pu8yqLqorbeu9MgDRdXW+/+IBdFp+MKrPziG50679OasQ5/LfJstKTu4Clr
	 Ex6J13T5XF6z0HJ2pT4mtdA4a/jfxnqbkNcrR3JwC9GOxq3sX3AnD+dyrBSH4ogsE/
	 39/b+y1Nqnv8kidSYLt9fCueVLsC/YXNzWJrcAepJAbUhG18akwkowgGqF5ki683RE
	 SzETbFBya0foX7zlDIBux4jhrZmnKHvPSDlG0ts3kh8UK+oX72w30wna/fNAZdzP1z
	 tSCrUuUW/WANA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9C89EB64D9
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 10:09:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168915654871.25039.3996120365592261252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24c1e88a113e20d157423dc1cc7a80c42479f530a8358b80b4fae40519cd2d74
Date: Wed, 12 Jul 2023 10:09:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689156548
