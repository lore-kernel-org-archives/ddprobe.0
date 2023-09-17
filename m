Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AC28173
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 00:05:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD53FC433C7
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 00:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694909108;
	bh=/8wHiIXI85vSiUaQHJcMgKvZcgFHxv67JuqT+/Dzk7g=;
	h=To:Subject:From:Date:From;
	b=pZ586+AIWzU1UqpNzrq0057jFxyYN2cWmELJHDHHDxI3Ek8UskbXRJHP2RDIM8O9L
	 uBijIjEWOFw4K1aNV01qMIXodGbO/M9ILkOSSE7nLgCEOMLUhKOySIUtZurVs83QZr
	 fN/6cRpkwXVUTufPSp+s4nbRv5bKRvWrIDVU+SKlGlXULW8Usd8hghmiGDyWvIefUq
	 1Jf5oBuY7mJkI6kq9rJtdUpJHy588zzcxvGg5AohQOxG4NRuKNOWZ5mCRYdZAV3W16
	 UrBHfEmV48kG8C4BSdkfVz0FOIfMJVZs/Td8x9lmzpKKzTBEt8dlAuRJYzlo/QhoIw
	 NhQyUQ2ccjVEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE88BC2BA2B
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 00:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169490910866.30518.12517709868574558358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd5a8b307ee70a646870efd3ec25222a699a0615f00a2ae97e2c50ee35ed0b9c
Date: Sun, 17 Sep 2023 00:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694909108
