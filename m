Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E41B3D3A0
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 16:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C854FC433C7
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 16:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691771588;
	bh=Fm7gwm0n5vwgyWiP3Am9QLFU4jivDcAdYZxd/wV4koU=;
	h=To:Subject:From:Date:From;
	b=XEkBODp03C9AOS/LfgpY4SaFCcvDOUfdJHE0OAlfaJejp4Ibl6cyzaNXg9lebCdVr
	 ZsSv9tGHx/5iAhz7tPr7QlROcr7Id7momoUtErzbvTABJwabgFjmIi1CJ2Ab7j8/Kb
	 6iKWSxjIg/bW7+vl1nkZA5z858racLuUSKGbiakZDmklfoY8WobKtxZelwIc1Z5kZ6
	 IwqoTefzkDXG/hFV2X1vwx3B1UAvaOMi3fzbsysXttVuxy9nOBGt/ANvt1PM7JjM2k
	 BWfiuH2jORAgp9bZJ0aNo58xWo5EFncSK5CabAi8IppQArQ9A5Xrk8k0LHWfNN5NAC
	 NXBFThqMhij2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC787EB64DD
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 16:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169177158870.30805.8129479803037843323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 585e39208357d48004a6c0aa14364b772d89604c45fd2389dbf7fb19a817a90b
Date: Fri, 11 Aug 2023 16:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691771588
