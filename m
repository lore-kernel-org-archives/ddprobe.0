Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC19B20E1
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 06:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8325CC433EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 06:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671862887;
	bh=nkq3VcbXpuqMNXgprkEghVn4IrKUAbEJQLbKwGdc/VQ=;
	h=To:Subject:From:Date:From;
	b=ilTyb9opwVyLyjfoo5blpNcHxC/tChpwZHzZHXaUyLQ63X1dCP/iU0XyPHYfQTojv
	 338g9tYwPY8SjZ4MeG+wAYeb9ObJnp22MAXjJEwK/18ArUYL+WmuInRN97aNB9vpL6
	 SRJMSj3GPGHXUqDk3FbYlUVh80I3fT1/R7xWspotHhAZlJbsEBaFYpHuA3Z7bbe7Tu
	 Zj6+6dKACjgGkHcKS9QLWRKZ3Ga5l5oUcHmGuF3sjspd3spXOCM6lJl3eWhV1EVRij
	 BHQTK0XYwY4FpA6Fqtndf/lYVWCvViEfHdHMuSb+UeS37frg2+F98X58ZlEXRzMQgO
	 0xtpO2Kb+RF4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67807C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 06:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167186288741.3893.11653421050934279039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51dca769b5ec0a20ec78f2d62063f149a71aa90bb563b2cd40d50bf068d37a2e
Date: Sat, 24 Dec 2022 06:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671862887
