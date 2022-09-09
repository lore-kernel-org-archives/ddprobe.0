Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE728622
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 06:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AE63C433C1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662706253;
	bh=C2w9aJtXpLGESq6Wpw/FqxKN3LEfgGfAWJGdQr0r2EI=;
	h=To:Subject:From:Date:From;
	b=EqeYUtRTTtaafil+YKL4wHE9ZP9TRKIwkpf7ao40kJJyJalt1eCbd8+5MdxL44Ulw
	 VyPN/Hsg930frzpjuAwgm/B/njw6zaAzIsM1HB+Z+Gwl690a5L2q/C3ldeamvfzMVS
	 ssNXXmkr0mpu2fsPEPU4YheIcmdalME2q3wZk6gxTDLlrRznFv+QMlIAIBBL/ohvIh
	 N+nLyMpjGnAhPI8ZvLWiucEU3fuVSXG1oWiyUfPvRXZwJi8RC02kt+e2LDekHUrRBj
	 twGO+pCn+98mZ+eGTYOQs4ppTaGq/0N0/WD0BjcpwggQ3e+XEgBpHJCoW1y3T+v9qx
	 3sAWERqFv8Tow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51E69ECAAD3
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 06:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166270625332.5961.7100595950900618446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffd790436973ec205d287e9ef356ad207c2ff955eccad71a6d049f55d5e2f056
Date: Fri, 09 Sep 2022 06:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662706253
