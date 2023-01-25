Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC4029A8
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 20:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2C54C433A0
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 20:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674679385;
	bh=sulg5gyUd2UhScUcztSf2hN47LWZetynKXWloPLgUHQ=;
	h=To:Subject:From:Date:From;
	b=LOSqVR+gpAkE+I5454qQnC9YOsf1GFPFOK4G14kFzmbQR7TCYTKV4EaSp4HjiQwQR
	 P9kgSb7i4ehTY/RhnOkCxmB38+tdfaXqE9ugbFyUp3hvab5fB0gDAJSLdS7iTewqzg
	 qcRuvameY1nVSRVtdjFu1D7aBTtk8c2hLAl6zGhw/PhNDSnL2lufwh92PR0EbDCqv8
	 CsoQRbvpjWpG9GbbF2uxzt04owP99xOX9fya+EiqnVz3dYrpA59LL/DIXY+VfAtsbf
	 tNfU1X4Q4/l3rrINjyMo5v6bBMU8Yt6iPiSVEQmaKHyEXY29OE05J3FZAgGrsoRm5x
	 f2CPeuOzZfrtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0653C61DB3
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 20:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167467938577.25443.11586246586381647958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fc9a81ccd348c5520f5a43361be9327fbef41cb717453649128fa9143cb4f87
Date: Wed, 25 Jan 2023 20:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674679385
