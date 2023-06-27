Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 659B46FDF
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 21:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA298C433C0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 21:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687901588;
	bh=Zmk2jjhAjdVLAPa1QxqAcEAUVzOJ14Kcet1BH75ReTQ=;
	h=To:Subject:From:Date:From;
	b=cXz7/KOZXbAts/gXeNVRDVk2PniRgmXMzqV+VM/l0ZTfbUk3rrONHxkV+N0v8jv7z
	 lcb3Xr3rG9g10arVHSlnbb62+CR/nQkgd9JC6qyYbW17xGp9OzrbBlQt+IExSGDsCu
	 wwFqjDk10RGi5vKPEFlgTwTCdsevwsVboMHJeMiC6ll6Cgd8JgQh3/q24stMu53g/F
	 k2JI31/e+ZMW5kijmlQYdLeyQwP3M4tEbnPF+NieJa0fXmLDzqGQUKKKuphiEfLXLK
	 mAoFJdywwTDtG96z9f6/03wBCsNvShxwD84vZaRubGKhM6ci9z6qCPKR9EGcS5GwBK
	 3c83CFeKFVXpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3D24EB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 21:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168790158879.9422.10475655852577888811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 104c59f6bc493a217e149e2435f5da1205af275926fefa5579c4ade83aae5efc
Date: Tue, 27 Jun 2023 21:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687901588
