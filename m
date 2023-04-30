Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C80015A2
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 09:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E49F4C433D2
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 09:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682846165;
	bh=TiOqTqjP+4RShsZNXpIu2JX1Tqr6oICh9qqVUQk2Q8g=;
	h=To:Subject:From:Date:From;
	b=nfRHr76D8PNwED3u8l7Itw2dSe7IL7TEo2ngT8W/LgaXvKN8sKU6jI4/nh+jp3diz
	 tUYWehiLOUdEwvBqgN5pFZcSz4wT8XLy3zYW0nvjSI8tzUxQJx1q63cswnRMXRbQl5
	 k+Kd+1/zPf7CSBnv7b8hj/fwyjbcKrX3U+BOiFytO2/UppBkUFT2Q9oOhrpcGfAczb
	 6RFQywIHWyZjioqZ3bfOJd7Bmq+fiKrDmBrM1TeS+99TDHpjalHEskzIY3mfpxfXF+
	 phiplffyUGkdP7jH0UclivQTpbpab9uX56UPjEn4ra743eg6WkRf7MZOD59AhsNTjI
	 FtgJBevlXUVzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6852C77B73
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 09:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168284616577.12677.8260842607720301238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 566599e88b0b6fb5ab450b52655d241b74143ba89392f1ae534b14d1a91241f9
Date: Sun, 30 Apr 2023 09:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682846165
