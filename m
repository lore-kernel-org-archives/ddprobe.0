Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBAB36ADB
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 22:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87411C433D2
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 22:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672178487;
	bh=gtSMHHS9FNNCZ+Ad31F8WimkubCcvBhqBUEgpv2MCF8=;
	h=To:Subject:From:Date:From;
	b=Ufou1Pdrk1owElZPg4OX8f/EB+AOKBzdwYRu77/SaJnn7jvZ8hGh0O1B6jFPYWBsg
	 CJPEyHRYB+wpzflvlit3zW78ocYnwz/o7fLYrKg23MaG/YIc4ZMl39sUS5d4AOt4Y6
	 RSpJ7z79+W/I6u4fE2WzO1QH62QOA6g6nSh8xLnminQ1cZJQa6x3VGdMX2rPJ4Vv4M
	 gCul1mBpx50OcqcZB8A6qzI/7pUsvHxZ0vGpJBYdCgx+OQdlrThLxK087XrsCo/PFG
	 j1CFfs1DF/DATiK6ymN2zCQcOq2/Hc3qLdAXeTjVF3wk4RkV1ooRBP+9+u5oKxFuJP
	 LvS1bePkC8ZTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69206C4167B
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 22:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167217848741.26690.1034787078826458129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6cc235e4780f26df342fa6e7842c2918983c9f2cdbf486ba9d59dce38979c0c
Date: Tue, 27 Dec 2022 22:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672178487
