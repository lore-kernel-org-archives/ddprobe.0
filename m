Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224F82C1BD
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 15:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZoqEAF/w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7722BC433C9
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 15:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701704296;
	bh=POQzjblzR36JaSaagMsExH9sR7Z3C5lPQVEjB0wuaxY=;
	h=To:Subject:From:Date:From;
	b=ZoqEAF/wy+KTi93Fqg1MrkMsK/L9Zvy4u+To7i2k3yKeoUO4bg+LPsT9Qx+S+V+I7
	 ym0Vu8MmUe22kCwoW/ICi51bU6NPhETpefCrdOHVg1UffvZltDRq+rs5SenWGMD64Y
	 YkABYpcUKCRb3bNpVRW96kpV8tRcc+5P7nF5ERH/sxyHTzwZsTlLmF6hxW8IGeRAMN
	 /voWjyiXyU4iHvN41VbA+UlOTsLkabTIgeFZWuIOA6QaywXQ24LoZuspKIpHKyWKUr
	 pA8wQrxGmKYleOr+l8AVMFT/fewdEzLXlhMkixB2pifZ52dNY1fI6IAPWks6wxFzZp
	 narekIK5+qAmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CB17C4167B
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 15:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170170429637.4833.16454467514423739575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cecab2d512a814a325b2024ace2dea308a1caa201cbf7f08955fa445a52b1ab7
Date: Mon, 04 Dec 2023 15:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701704296
