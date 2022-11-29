Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBDD036A
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 12:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AE8AC433D7
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 12:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669725054;
	bh=5SOldTcAjbi6crRArA+qfz/cE9RdPsGye4L/A3O/5p0=;
	h=To:Subject:From:Date:From;
	b=hTUwl0SuIf+K33Q9fT6Cq+XEv5eB4dCVeFubDQ5V3/p6XUGf5a2qbGukHG1cKIIYz
	 j9xbgSVTfkDYnj5KMTdS9gTolJCtnodo63G6fXOQBNOpaAOVG+eMNeDhMsrJjHbghG
	 GYwWGjlI3vcvCjii4xloI/Wq3Q6EU/FEguXILlKg0ZLa4v5sB8ylU6T/oRwzvk0EEO
	 CSdHwXAGgfe98YjROf3v2K47ffn+3WKSqylGDxsbP72TPJPFtej4Q+sAZOXUIenOsP
	 5/hGfWWAMBsa41qacvgH/JCsgxVS29FOMRc9e3hrgMbRV4VcvHg3E4ZG/IO/i7Of9K
	 5fFYa+nG0/lkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5366DC4321E
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 12:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166972505433.20062.16807860285437600771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 957e7541f8a65352f4ea42aa3371fb983dc50ad95d4f50c0296352f27137b8d2
Date: Tue, 29 Nov 2022 12:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669725054
