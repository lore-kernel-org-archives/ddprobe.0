Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2572B1361
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 13:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5F27C433D2
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 13:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683552485;
	bh=2IpPW2T4HXsZreHAptg3Wpm2NkSFQzJkqCZYmQm6NOg=;
	h=To:Subject:From:Date:From;
	b=kmGRSDLginxsxlVA8Sqa7BSBE1zzA2CUo/Tbs3+qoTLVkvzBRf0rZSw0rRFqYzLcc
	 XdSVISBmYQ7Hps7lMVz4uGfYqSEj5Vcs2Ly7Gyt2nBzNOoHf4znj6ORjPGWiKUiiFV
	 wxmqhulMKcCNgDVAcCmIGV1aSUV2TDcTszJQraAdyk0O0VPPWE2SpZfaW+IgXZ8073
	 RF4fjdcDYBI3DqtxNRocLksJJ66apOLbw/GEmS4q9wU295QoiRT8wUuKdyCU6UeIXu
	 nUBv+YMhyfrwN4vMXftW4h6ZJb3jABdMbbHgZrw9QIFGv2NQQOIEF2b+3l4f8LY3xz
	 Kc8YJbWN/BUgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9A00C77B7F
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 13:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168355248574.18730.9745744784574713362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5859d75fcb62bcc0ced256d08f25169510de4a2f1ef1850ae34916b5b5fec02f
Date: Mon, 08 May 2023 13:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683552485
