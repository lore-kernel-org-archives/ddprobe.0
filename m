Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158D328F6
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 09:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9AA9C433D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 09:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671008487;
	bh=xHNXDxPwdvrJQBeVzLjje3DfVEC3ToKllq/wtg+vC48=;
	h=To:Subject:From:Date:From;
	b=CZ+mvNE6XGFC/LDz0oRyxK82fWahbGgX2dhJbZOVF+zW1j4KrTuVeb3XhR8jK2CuN
	 MAfxGwS2zDAAj6GPrsRJ5weADtRaBogHtUMreO2RWHJGQcBMgnr9TiAIhRByfNS3Yt
	 QIzWf96sr8v958gQy/vNevnN80lwOVLKKEkyDvzkJYrjpo+S2Y/5BsO9GI3MHrvhEi
	 Y13b8Sh62Z6EATnUa56zP8ZngiRXJyxb0lhyP68EkICzvZw5sppNE+1bxVgmNc38nl
	 g/dcaDRiAERo4yNA73iPPWfepLoKSyUfsLKTpQ/rUS2g9jtlKFNM4Yp2dx/5s8Cg24
	 6B+LrpH2NUDbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A015AC4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 09:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167100848764.26945.17160509516315646741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 290827dbf49b433f671795f24a19e749f519b5f1aa612c7c6dec72168936d131
Date: Wed, 14 Dec 2022 09:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671008487
