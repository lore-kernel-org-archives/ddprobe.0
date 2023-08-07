Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495A816409
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 19:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA727C433C8
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 19:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691436788;
	bh=dcwj+YXEJRd+dsQufil79ockzALzuBNAGglwwN1TKYc=;
	h=To:Subject:From:Date:From;
	b=JjN/3HCAigb95Va4uI2F1X/wv2kquZRi3j89N2TE4QqKrMrrRcEeg4T3stlvJ4BWJ
	 F0WHZTCnQK2ThlPOGxW1KI2/yKWEblmVb2oDkfm1HZQZtNYnPB8FbJKwduF+ixBI4W
	 SCY8BrUZRV+Gpv6MzFTDVoJjyCpEWJVougSI0MfI9e4jno5SAwf28l/j3BfCgo0P+w
	 JsLbQrKQuMlk3Qg2mnjpdmzXhDc5aTAO2vkgFgBkGESNGQEtP+4w7v13OSDmHmATvJ
	 nPKGhvqHWxA3qFHEn+Pj6EFqC71kzx//P3FRRYmZDLNXY6JA9VmAs/nzo/JNnraGSJ
	 nYGF/c30KeSHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF5AC001DB
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 19:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169143678870.20833.5678476396832043480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc283d8bb77da3bf88e7f51450fad557ba5187a227ca70cbb72966b63e753dc1
Date: Mon, 07 Aug 2023 19:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691436788
