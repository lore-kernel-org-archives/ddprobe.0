Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA03E7F9
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 10:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79479C433D6
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 10:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669717254;
	bh=PTwDsEfCoDwkfv3QFBrEtRU6QLPMJgtQGaVYgVy3CpI=;
	h=To:Subject:From:Date:From;
	b=a0v4epdCeLwgexQzkAzoWxXEko3JCBlhnPKK69UwNkFQFEQj6yylcGSit4IOzSCbX
	 1ikUBjQTyx0ubx5td+g+W9lX+OTSPUAj9K6Y7USVcrVtEDJSD7aW0HAOicj9KNpuPL
	 ET5Um5e2275cZr0iXgwpAYScE3PktffV0kISJPMKI50QI8syNUH9hcCG2i3YxX9voz
	 6G9EB/pzb0A67WH1yHcQcs/nqerfyN+F3MEYN7VBNJYWCzfHwPUgnNO9GAkni5qYin
	 oJRqUoGTa8lHlkfG/iSq158nQI8dt8gYv3XYoYH1oJtP5xguBTuu1T/axKSztvsFDB
	 QewC9bhUdSnlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 567B5C4332F
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 10:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166971725434.5787.8793663164364893832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0401b8f41ef5af6733873ba2565bd3490c5972de3b5ee006f417bd1ae9f86e9
Date: Tue, 29 Nov 2022 10:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669717254
