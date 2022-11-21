Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9A832CAB
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 20:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 942C3C433D6
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 20:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669063854;
	bh=7gZGbhmDnDFP3+PIS2jQRLoWo6WEs2ZQ4gCU17XaUfg=;
	h=To:Subject:From:Date:From;
	b=HwH23N71eFaIM9CkAZ5LMEjDXd5vOba3JAIwc1/zhb6tHl1ceKQ7rzcccidrEza+6
	 O8sbt2o5odBWDKlLpzSxE9wBovJPZMr6LFrKhNtRgOi0jJFppD6J35Xgg08xsfqKIw
	 WkrZUNahZuw/axy+aM3oFoQI8Impn0kx8GSffx/II9d6WYWntpOx5nf18V/0AFWut2
	 /uzgC0OH5blYOuKJty1k08t9r9tkOoW1mzlHNb3oMj6EJ0uA9HW4s0qd67vAtmUWwJ
	 tBy3kDhjQeDaGgwoyfS4zoL5AkbAwb+TrDNVEjUpkAEf/yRSiz3qYL38G5i5BGdXNf
	 gmgZMh6xx4CRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68D14C433FE
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 20:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166906385441.29771.9764930582392112491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7eb3ba086898eda17a443fd744b4216115231ae56085475677065bef013a81c4
Date: Mon, 21 Nov 2022 20:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669063854
