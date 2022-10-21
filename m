Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B889217FA
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 12:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EE4AC433D6
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 12:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666356653;
	bh=J3gtKi3B1TO2djUQGBER5wlICVW/DN4B9DcZmCzmjOc=;
	h=To:Subject:From:Date:From;
	b=cYHIngX5MivIExzVL7IKTUxPOZOsFv/4wkwb1fM4UmgQFCKn65VWKgBAZJpfTFFoE
	 6T5bqD9quZ1LvZYJeYvX3wePEED+aJdz3PsiooBWt+cL1092yPn9FQ2BK+Ttc8t2J6
	 BKxsj7N91eZRu7O+bF7kAsoLsq7tLtBHRZAi+su9j2c4madsQcJMyuCHdGUkFifHgZ
	 OB5I3Vl2FkvvJhqEKm/ud/NeIz1oiC9JMK+vUTG+VUQUoie6PTUF/fXkc394Hmp3t3
	 BwbemyZrjgCBqj717FEwP+82b7jOmM4vPUoNGHwLyDYDJzgqDgoBBLlxuRzbTucHv3
	 JUAOUv8U97vpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53EC6C4332F
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 12:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166635665333.14630.2912261663905440764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f7f5bc67600bb738dff88426cececa2f99bd510a175fe5c9901396b67fd6f1b
Date: Fri, 21 Oct 2022 12:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666356653
