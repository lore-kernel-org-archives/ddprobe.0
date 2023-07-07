Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 743A3107B5
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 18:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3579C433C7
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 18:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688754428;
	bh=woxsAlJMJUo/s/nEdtB9QXhe6oPErLJabgHM5GjbbdI=;
	h=To:Subject:From:Date:From;
	b=JfYdiF7s2kK9DHhfCgz2EcjZ5ERdXjfbgINWL7FQ14ccOY3INmF46Qup4QLYWYK3d
	 oZBTNglCjedp5n3HSp0tkByRHrG6D4hK5kAgTHIDyVvmrNz8Cy3gSI9CnRjeE1dwoX
	 3sbJ1z8P4gdOor3b7uYcJQVvgT2S/8K3tasSK5gViPGXh5LOLom+mbRkxqcMOiEhub
	 jm4RCMzdQAeqJuOwb7x2TvKk/nvD9DtRUuIPvIZRbC4YC/lWiMavm2OTaGOQDoFiL6
	 lpn2OIzhx3O+l++wPQEleG+satHf4PxodQV9vLUWOxrxNysA6AqYMdhK+064m9s+rZ
	 OV0koTi5z756Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2F70EB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 18:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168875442878.18922.560731780718685465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c5afe37c33c264f138749a86de79de335b0db13aee570be5292ecb8fb4ec67a
Date: Fri, 07 Jul 2023 18:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688754428
