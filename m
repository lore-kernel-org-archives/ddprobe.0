Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEA971C13
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 08:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68CF1C433C1
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 08:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668412854;
	bh=0XpuMVII7PGQNGrdEJtqp7iO0yV4J82iMTr4IYGWa3o=;
	h=To:Subject:From:Date:From;
	b=FZzV38B+Jia+41s7HMiroxJuREN6rUmkmN9gVmwzo+Ky7PFGmc+2dguLttddQsm8h
	 r29wYyuYVEAil1H5HKrt2Hmfuo6BD/lYc+oaB7nI5PlKJw9ld8kIg15zy4hGaGMOUz
	 gl9wgncRhpIIRXy4K18t4NVQnEN0FDbnwWxRqVGNOIsUpUMyd+/swWV2QNH81tWI98
	 Dk1RLSwugA+oMnq0r0/WMZwLhzeiGPDDGGzbj4bxNO2wfEbWZrgkVTMLzVzCV9e/zK
	 OBWu02ach8ZzassQQ5b8Gk5csCA+shg57GHS6EMLr0PLizPJIN4AqX6CrFsovgUWl1
	 6JxsPFSusfsSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51FE1C4332F
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 08:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166841285432.15577.3761607106406570867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68c3e63eee065a25d779c2c50c59cad56bd089277e1cbb0f07173c46c3250525
Date: Mon, 14 Nov 2022 08:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668412854
