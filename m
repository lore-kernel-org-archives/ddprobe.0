Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B1C816427
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 14:58:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WblqQ7Nr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E90D0C433C8
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 14:58:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697641092;
	bh=Haknp1/ZJrf8f74S/W6UI5XE/nvEE9jNu90JQaE6KgE=;
	h=To:Subject:From:Date:From;
	b=WblqQ7Nrn1LvjMKwn1G0GYz4VnH17jHqoDE+/dlHo8rGW1yWGhraTWGmxzeB76jzo
	 depK+sGEZyiDE3mP6YawKAksVm46hzCaZIqgHZyeL56DO/Uu7NJQ5LxagOOsKvI+Yo
	 zZQzC+B7QZ7ggpRsho2+17a7J3oaPYCObIHnrJ8mD2l2qd4up59A4ht8XzloXLtY3N
	 ycqU8QHRcWz6qjspuC8Rv5zRUGzlhQtIXZZ/ZYyddm4Tm+5GAbywX9qjZW7cmmTHDE
	 WS/ZKQ8TXXD0LP5rKrAZv5yp/KCB0WxYXItxyh0cl7No/uJFki+Nz5QTc+WpeCdtPv
	 SIeXyktlPiAQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDBC4CDB47E
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 14:58:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169764109283.12717.1312960358892674280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccd0ee076251ee5f7778158c9bbe194fb2c07a155893b77a246d501d7b9eb86b
Date: Wed, 18 Oct 2023 14:58:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697641092
