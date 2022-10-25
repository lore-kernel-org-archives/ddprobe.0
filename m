Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C78A76FD7
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 22:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 738F6C433D6
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 22:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666735853;
	bh=3OO/4XuPMFJiy5M6hj4N2kVi2Yh2qSziZSWIcetrRjk=;
	h=To:Subject:From:Date:From;
	b=kgODpLcS0zVvvIlV/pJjcQFdBNkZUWdjn93aBmPgL0afwGr1rwIW0mjLNPmc2iHBT
	 M0yFzDO6iu7DkXP+mxrL8x2tUzrxFCFNTRw2v2R8HCH9yhzmyPNppTXDWmhr8YNhOh
	 GYMdBAy2xzjHeD08th/2V9mannxy46+I5tdW8losfQnNs2Rm8L8pjsWkDGdpd0pbcT
	 WZjFD3AfmU13JUx7YwavvI8YKo9zV8uBmM6Bqay+6ueHu/ZHl5ayiU+GNf9INmLfNA
	 GX3/tD2N3aGH9emyoC4nSOEuBJNDAznGwhD3QvNMADZ1FbJA7juVrnPAYNTdKBPAiO
	 qgmoVu+sMIyBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59292ECDFA1
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 22:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166673585335.5960.6707057936385630647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b6cb1608e36eff7dbc567123fc16413e108772bd9452dfa28e04a893646f297
Date: Tue, 25 Oct 2022 22:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666735853
