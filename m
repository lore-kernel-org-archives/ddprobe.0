Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C82FE5CB3
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 08:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EBB2C433D7
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 08:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667897454;
	bh=rBuMLlV0pHj3na8IV1fj/tcf/wzeVGOU7fDTR/ujgig=;
	h=To:Subject:From:Date:From;
	b=XHZdiYD8+cTMM7VleflPc34pXGM1KPHULqqJ1BYomN19TpRM0xkl815+Bl1RnNlYT
	 Dc5ggvjKsHTzffPi2dgRugNlPN1j7gGmXL/shLT8Vvzyx+wi9If6e24Q5Qr7ldIKkW
	 3t08hwdSTwQz0dIqK3QVfm9t84ACKger9SJWvvGvo/6YLpiy0KGM7OaFe3lucoVZ9C
	 RAZ/opNURuln2HAvot6oA9Pj+waqjX58e3zrk83rLpLy9vhL2B5yu5x7zXbwWorCmt
	 4H4IfxMKllBmHA8qWUNVloS7qUfEVHhhu2R87Zkn7/BuznE8r93AxHRQXz0D2ZnIVh
	 IUfaxVGE4NqHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53036C433FE
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 08:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166789745433.26516.10465893541989442359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a368c95df7f00b85f64edb13c61190e080b6cb323e3e1c04f968ff9682b1e7fe
Date: Tue, 08 Nov 2022 08:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667897454
