Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9C05487A5
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753091993; cv=none; b=HFu+bNepQI+EhpeohODVtXXrbK7DXpUbO1EaxhR7hUnJbdqvyYevPKKGDwUd0Oc8M9xQa/P0bedlV6mG/hjbnQzOH53YnayGQIUljaQOlzz4RLRdTTS3MOlDUmtcU0I2c4tdQR/IekTgmyvSNJ5zurh0jQoSxi5k8O7dJsIc/PI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753091993; c=relaxed/simple;
	bh=4wRGvRik94s7eknROsw8d8XOZ6ZGbSOE9SyNRrMLCPE=;
	h=To:Subject:From:Message-Id:Date; b=PUZmMrjP81quvR7LpR4K0n06X6r6zlJ6/CM6hbWJHRrm0cBFB+MHbspyZpr74P+cy0FwhLcKovSBKRT0EjDJcZYea9r1xErBB7dR0K8NHBdcmFFddhWr7QEp/NvRH2w8nFBKYjY8HTYLL0qrb+CeM2G2OJyr6hhKhRYoDPTpQIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M/rhW4WZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M/rhW4WZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE35C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753091993;
	bh=4wRGvRik94s7eknROsw8d8XOZ6ZGbSOE9SyNRrMLCPE=;
	h=To:Subject:From:Date:From;
	b=M/rhW4WZbTilZLbt/SKjHuKpvCKBSd4ru9Fdcq5MMF89dJAIqKO0H8YwL6owESNta
	 PpA7qfVSM9e41AZx6idPKM4oKRWDieQPL/cuDJbBuKhPMuAhH9NMcqL16ve/9+SW1V
	 WtcNf846D1w2tmPn8YeKZIJGF6e1sTzU5yLOFOzM2GAPhcMguYhJRdkRPJWaLUTD7F
	 AbVX3y7t/Dgc13i/GlO0S7l9aCKUYREtS31IF7tpKuVA0Czt5r4+tYwx+mYwtXHich
	 Vi4x9hYwqGY4YShJEI8xrn4+TJ3mY+3C5+XIeyN5TMZfT4zz+r2jjQ47aFGaDbDH22
	 D66wDijz3qkIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5D0C87FC5
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175309199357.21201.7735621217248267619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13b3c02df61c601c32f3458248b774d2bff5cfbab929abeac98a5ed969d106da
Date: Mon, 21 Jul 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753091993
