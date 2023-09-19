Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CEDB399
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 01:55:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C856AC433C8
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 01:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695088508;
	bh=HWR5KTfRXhM11zFhrenRwxkc0L2UHj9yph0ZZmz7/Ds=;
	h=To:Subject:From:Date:From;
	b=Hr1Xt+59JlbedSVgy7oAoUDewXtNr5W7puHophyqvdaA3lmC3IV/f3cHfQDFz6+yu
	 qC9jb/USjGSRCpLIljDuRciyLuUYWaj19yghyT5vhMP63HgYFbIDwl4VmkbVYkQDb3
	 1PpWETX3iqV8pk0KBkgYGOM1QtxnSC/AHU48ysORk5Z4QZTguTlBa4gxOb3Y4r6f4c
	 LTo42SvlX0qZ0J3oxRDrnac8246qdz7UYyFOuIMS7AkdMGF8XX3Z1QFs4RL4A29Ogx
	 2W37fFn5QFjfjtJFjcf4v30HYlPtvMqgQkvHB5ZscI9T7wL5FiWAvoJuI2Md0/lCUI
	 QdV0GrwwkAn9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA524CD3430
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 01:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169508850867.5952.13741307725022364372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a5b1b4adebab2f8a28c96212cb536ea1633639fd3c37af5a3ef654c465ca879
Date: Tue, 19 Sep 2023 01:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695088508
