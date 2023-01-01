Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E50D317D4
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 22:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8845FC433D2
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 22:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672612287;
	bh=B5sCQDXl/k9WO4uKlmdgwf63IoWZehfFGVUxaEKy7hQ=;
	h=To:Subject:From:Date:From;
	b=TXrQCh+EJKMQt1sO2N1+fXAbYRLEh3gbvLPe5YGRhygtMy9JJiUlTwX59fHPxy1A4
	 +ofBHiBpYd7SgZufw0IgOC94byNCZnHUcp8C/rJT4w3Cza9FbCFrwX1xp08Cphuxff
	 t5P0OwjjB6CwxNsxEwEZznE8qJPO/9PkjyHTU838AfVr+KxiILPMx+qca5By6ul97q
	 LbSYCjG5LNhtMRw8uqLc/G1ckxIMM9YIbG1bA8ofWyHcQ/z/opvAbzz+NWrvUdZJNY
	 bqkhhKnPu8VhVmH6/otqiH2WcV6Poe/yW1sbn/uKETipGvOxYSXgME3wD7MfPcSv5Z
	 TFDuD0L9LbabQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A1B2C4167B
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 22:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167261228739.1278.7957871632456907853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6584613fa0335eab7bfbc2fe21cd829ddd9dc73dc14e325cd17e235a7d7d781
Date: Sun, 01 Jan 2023 22:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672612287
