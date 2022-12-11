Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D29BE3236
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 22:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8461EC433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 22:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670796087;
	bh=Ek3SxZ2N/eFkjHrNIlYpGDwwNwxpIbM6rogyrFuYMHY=;
	h=To:Subject:From:Date:From;
	b=q7+RH+0xUqyaDoqPOzAHtXQsqGRokphKT174Ob8gjYbaYPUgtUaBDlaLA6R8DhuV1
	 KYHFU5Cgn3Rpm4TuX+WA3nTm5TwUtXUye23AgfZBfUbdG/4A3yEsh5j5ZOkMmeEaPX
	 PBeXEQdEpQ+VXy0Jz4bSGZynj4W9kMt/iEhx2i6sK4UUbE+gpiLk43SKvHVdA1l4PQ
	 52iob4vjl1f7Gu3WfdxE+h8093KgiUrEIpuPh4jDd6wAb8fLX5eyWFHaRbrJi/kJWt
	 ATUp6JneFl51uTl0tu0WSMtgq2l1AjgouYkSROMCMQjvZjKPJuiygHsGn0Qo9+Ahb/
	 3FVEHNmo5tJ5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65689C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 22:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167079608740.5902.14299710724837635925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a730d71a730445f784041757a8a6866427bb7a40608b3154c14ca8ebcc4adbc6
Date: Sun, 11 Dec 2022 22:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670796087
