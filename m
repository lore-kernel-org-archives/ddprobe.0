Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68D7A7F
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 00:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D86C9C433C8
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 00:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687653188;
	bh=6QgNVMWe0BOniAHG7SDvayhPC+l22EXym7wgMb13SQM=;
	h=To:Subject:From:Date:From;
	b=l6rVLN+OhjD4U2s22qqPK4ZBnIqCeBjXRUdaa7yyWOLDTd9D2aLFmKdsYA81KQ9Fd
	 2zaEe02s2++eHrl6qWzvHzHev+6Jq/96dCwoYtgiuH4yt86McsfvM8nfPM6+9UNzhw
	 FcxbmNzWSr+BrEd4p9KuhyORcocQlpR2+whOutvqneHkhliWDWvOBCBGQJnHYxTlir
	 zGnrw1WNelh2Cs3CbWW8Jf91Oi1TlaT2tc9o7uPjbCZP16vnEmFp4mBV1+eD6XXDUY
	 5pn5xLHRNheaK+ukwdGgl4p5s/zf10x4C0tprQ55DowbZBPVPq0Njj+oHFu/AlL1WB
	 qal7ThN6FgR/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5073EB64DA
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 00:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168765318873.19984.7644676895110710678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1030e9fc78efd5bff6f3cd2c36410a9aedc095ac5d28ab7c76eccaf551447631
Date: Sun, 25 Jun 2023 00:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687653188
