Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BDD82D624
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 21:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SoMsCPSm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE35C433C7
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 21:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699912696;
	bh=U8yONJjt8UeQZLhmMH1iuk2z/kIuBiwRpwad32XR/g8=;
	h=To:Subject:From:Date:From;
	b=SoMsCPSmKVruwLRz0o4RPDSsoZIDUUQb0kG7TM0UIZMmp6Qg6GEjTPaGVm3JfGCU2
	 zE3aI1rB1Q220MzQY1ODqbFxw4Ph9/WC78LhvU3M6LZB4nTGCLCJTeEzlJreiv3eEQ
	 ZGqdRMqbug70sKCBuQv1S+Ynksv7PryPO7CY/F5R3YtiisJSkCnrrmpbaIRC8OETn7
	 JRWxu66plcpiGq8UKmplRGJlNbw+xw9IAY6HryMDUzuqrv/eZdcAaqfHI3H9e1qFdh
	 vmdxr7qiyCZ2iYX0d/ipKFUeuwBoq/p+fJheWdQsGkubkgxYklhF7lNOrc8WI0DN09
	 a92ccjTBgVNCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F445C4332F
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 21:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169991269650.32757.13573403094910621617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fefde6ed8b8fb16306e5ec62f09b7ce9d4a674e9800033d86bc27f9ab183a634
Date: Mon, 13 Nov 2023 21:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699912696
