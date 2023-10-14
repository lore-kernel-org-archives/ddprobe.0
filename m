Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CB2F134C0
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 15:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="shF1G3ny"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6878C433C8
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 15:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697297828;
	bh=ItzGbHNs22mjXzrUnmMb9eV0WBfma8Kkl+qp20MgIDc=;
	h=To:Subject:From:Date:From;
	b=shF1G3nyiKqa5Cd6cxThR15ctG8Jhnro/QlKnlSJg/Wjvocuf1PbtQiNutsyEXoaw
	 kVVj4zMo36pd4rOFQ9N5mkzi0qcXhsjHqBBQxpkSYxWdBrZP0WpvYb2S7ce0olAamJ
	 yX897IFVkDPiy+ROM44cseMUmxcgA95SAgZcGjHuVz9OlhEuGx8VAcpPzpRE9QYKrb
	 muW0KBKiqr2wsMYWxWVnbh2TF29yb79cIl2boYMs7TV3DSxpr6pu2MN5CT9FtcWDYq
	 JlZtb8/49lhg5a1USa0reWZys2noVAWTELWqohmlw1QxMn3nvRa4M1fw6W1i+Zjj03
	 ao8U4rLj9TK9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6F7CDB474
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 15:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169729782867.2687.5328465523938749630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9372ece810f479387f02cd9b350a8dffb0c05282c808336e77af81cea60d73c6
Date: Sat, 14 Oct 2023 15:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697297828
