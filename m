Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4F23186B
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 08:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75A30C433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 08:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669968054;
	bh=isgiLN13NUiwe+0vQV9H2+JMgtUDbP212zoAdPYRgQI=;
	h=To:Subject:From:Date:From;
	b=CJat3+ebZn/TPsR7SzH33Xw7wSyo3EUs765iQHqIIpFgJiAvRyY6s+MdWPWIh6WB4
	 f6eCRxK2kjdtyTnlhBdNd2CV+WWHOsjax5E4H5Ns9u5VMQzDP0SgEmEL1tVTEZIMNl
	 LZZIyuaC0A9isF+OrCA2HtbVkFz/EZrbTi7VUiU3ecOP9dCrzamFswXty1c7HKz1Sa
	 LATKCSkEc0hxfho/kgRAN4ehOT7f8yTGB4RSoJopuQtvYpz1btPN25EhiN6w8HLzs0
	 XGmBUdcX7dpzcgJ2384T1GCPYZvBzc/zNjQl3kLxdJhVipdGpSzG9eaGGYwdDopv2Y
	 YEjMYWLZ9nZeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59525C4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 08:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166996805435.24039.11254235173058616045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d05f83f8e65bfa73fd027ffc2b6c49afa2612798b625cb0636d098bab985c6b
Date: Fri, 02 Dec 2022 08:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669968054
