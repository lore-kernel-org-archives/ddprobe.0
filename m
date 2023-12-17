Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B32DE4645C
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 18:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tgk2Igvx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85EE0C433C7
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 18:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702838896;
	bh=PTHxxQXs+bpYstWvhLMseF47XPeNWWFR7RLj2+MzN2g=;
	h=To:Subject:From:Date:From;
	b=Tgk2IgvxOrYf6i5ZZOjjCiYA7G89HBsPtdQhY2wLk7Xgjn8+SHofEH6ZbCuKO4mF6
	 HvtcQLo755SpSBCWFIe+jzBbmyDzEEQwoPNq0PQOdM8bMh8u+GHCj1gfgtQhk5PjMD
	 ZmtQI16pq0+WJNVf6enbgULvEjc179QPtRkph4jSGIwFGWFvrKvKR7JOL1L8myhCfS
	 amuzNTEViDf90EZgwgkrT8mLhZGzAYcOagXnU1wAggT/yO1dw7cvjmNLW+K+yz2ESH
	 bJFvhi7eaqYlgPDmz3vaSSdr6TfIc4Hce+TdKlCV9fpnKyRViYBtBXKL/74PHi7Lxj
	 ZU8zAUeYXQl9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F427C3DA6E
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 18:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170283889639.22895.13103895864371781418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 667143ebca61e5077598d7fb098f3f6bbc493eef76e0c6b960fac33c49656ecb
Date: Sun, 17 Dec 2023 18:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702838896
