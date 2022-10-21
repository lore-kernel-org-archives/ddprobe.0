Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEA097B
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 02:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E122C433D7
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 02:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666319453;
	bh=vtuO/VsU4ikr1qkts9q6dvz7StZKR9WosC+6FA43w8k=;
	h=To:Subject:From:Date:From;
	b=gleMhgsUoMHQJ2ZpdgsQ14se6vDrwLQGwBoZU9pzS+V+xjfc3VCmz4mI5HDNiYBL9
	 ZRmzwxmirO2TO24VLzqOGgkbd8X1P6/vZpWEeUS1owXqS43GJIGX4yulNjHyNlPlp/
	 T6oz7Twd/YqCv3sV/qMzKXwwrVgcSgtQG5udPHFzWEhnNm8W+OEXIGHTDghQXPvhP9
	 70fgX4o6PoM/1a9yBBmep0l0Tmbzv09Rp/wNRTi8tCO0KVOCTytMhAoVGqtug6vfSy
	 pxTu3l5mxLTXiImz+PBWmZNIfr5f7Jb3Ynw8b60eD3xPA/qdLlDFDdacA4UsZGPUmP
	 ZXpiH3CHRFgVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52A47C4332F
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 02:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166631945332.31778.9871399115004062425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96c310f5a4975ce22632ea4dc9f4ff2a561066220ad8db6aa7658662e06ade1f
Date: Fri, 21 Oct 2022 02:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666319453
