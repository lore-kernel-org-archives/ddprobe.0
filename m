Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C60CF23AC
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 15:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F4C8C433D6
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 15:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665935453;
	bh=q8tmSWOjnSKvnX2pfWlX/dhYR/QpcQquEmIe78fdsOc=;
	h=To:Subject:From:Date:From;
	b=eWKq5pIj5Pr/KoBIo2hC12HA3orrFSBJv4h1S2rep40XZwd3lXy0FFB0PpxasTjYX
	 QdJgq6GDjW1dHCxOR1/hLCCy2rlqFB2OlohujxD4xKdu3wYJ0KznSMq8ZncMdpAY5F
	 8ZkeUOgLc98U+hlQYf7vROk0emXRWtbzz5hkfvxxwvhsX/IqtTWANX0l98cJNdl+1R
	 WlH7RshrwO7pFlkk9MSNA/V0NRKX2tiWyNyUv+FhUn+qD8m3He0kB7ebb89Kvt4E7r
	 Ki5CFzKT7yukhnTrOEPrm0IcdY88UPwBv3jKXvtNimcZJBWcYmqvzjSz6DLfc+timI
	 UK6suY8NxI1Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52E29C433FE
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 15:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166593545333.22541.5171006484872880212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffbc5857ac084a3209758332cc2bd767a02ed96214e36c0a463831e60a001a72
Date: Sun, 16 Oct 2022 15:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665935453
