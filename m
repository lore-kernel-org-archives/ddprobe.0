Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6DFF1105
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 04:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BD27C433EF
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 04:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672287087;
	bh=KZoV4iaeQkwhTXIE9otKJRjKudR090OQSjoEQl32Hmg=;
	h=To:Subject:From:Date:From;
	b=vNrwlkROQFIf/6M1m0vtTfGaIfOfEFUhTYeHhOBX8+e35Qe0ynSDconNQSIIZedm0
	 gt8dzVuI7jcWIh0+X/6kCQJFjHbHKoJtk9G0/p7bEKnu6cSCSNUSu1n13QY6mcUtzF
	 3cGLdoXbLU2MW6daPOrLUAqvjKJQlVQZjP+nlgev/WOMxYWuiRrhqplr+cjjXOpA/l
	 w+6eqr1hMpyAGnB5/RfGFyCQ9rcSkkOr0r1FLTxp2L9M1+SpZkukLHH4yd51bcw8Nc
	 Yplv+27uS3q4fffRdalGJ8GSoT5IhKKaZMY35MR6uTnzfAuQDMZN2eQkrDMSl2wbAL
	 SvGIqcplIJ+Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DB51C4332F
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 04:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167228708741.31189.10919487600208961014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a324639a053c3016ebfb588605b7afe509cb480fa21735b131b3dc5c50a82bf
Date: Thu, 29 Dec 2022 04:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672287087
