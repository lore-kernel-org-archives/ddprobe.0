Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79D003D61
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 04:11:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E798AC433C8
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 04:11:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689739868;
	bh=SpR+3qr93V2/GTpD6nqM3dDeyHKkWLIVfGodiWYw0xM=;
	h=To:Subject:From:Date:From;
	b=ZVuccS9W2T87S3ezWz8p2CEmk8TsSmWrb5oJTQEOZgIulGnb7vPsq3d/m2GxeouIR
	 iLy2q3tBjsXW/boH+YVCAlgyYamOegI6gGi6Ucob6O+01Sgk48L2hQLlq9XA/FUarH
	 1sqNAtrnGE7RAE1XcmadMcmHfhtNGSOFUn+MRd5ALfL1pN8xoFj1MjSiV9MddjJ7jg
	 nDuMjuu3Sb7DZ65qVX3njyMDSk6lr9BxUKNMiPfo/wIaOe0sFUTA8J9GaV4a52JZIj
	 8tAwdhdsBer1+TP5Wh8eZA9xjcJX+FR/JXYAfb9/w7t1D3o9wzeFbKAf7TTlTQmait
	 rna8Dn3lKMmtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD667EB64DA
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 04:11:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168973986882.30330.9496764928405198632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1063a66f9871d6ea3e6326e53e63ceb3d5cb7c6a541bc151ca3ccfb6474eafc9
Date: Wed, 19 Jul 2023 04:11:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689739868
