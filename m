Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28FF2198831
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727722554; cv=none; b=rAGhLma1j01Gvl6mYrxL4UARpzUnky3a/5v14N30fF/cYMgtkXny+csRGgZqDKsnvAnbuH4vJ/Wh1w+uu4MLJYsKX7TPzFtkrTNChB7YQpnc5pyMJTtG1GnFLafySX7HZCuV0a2afMcZDul1blfq5CH6fkG7GwLRAU6Gr1gc2Y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727722554; c=relaxed/simple;
	bh=uPFB5+3dsT9JLX0dyjuOJUi82eukWG53kR3i2o1pSkw=;
	h=To:Subject:From:Message-Id:Date; b=PRL/IZLmcvB/ZS0ETFLAJdhzapsvgd11GTQrgh/s7MbdCsvapHIhnvI57HUrPVjzNlniT69CPzxaTgNYJxWnGod6yLOfIvKXHWXpLV/Cbj3tU/xv6xio0uiC0hLm7oJ3FK1Zrxqwsva6umr/Jd0MDOT+ZZb6MDbHzlkGAf38fKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k6HAQ+tF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k6HAQ+tF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89A4C4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727722553;
	bh=uPFB5+3dsT9JLX0dyjuOJUi82eukWG53kR3i2o1pSkw=;
	h=To:Subject:From:Date:From;
	b=k6HAQ+tFxlF1rmEoJbpJ92TASfysmVna69THVlMaL1dXdPDtXReUcBreOwOpMuWsG
	 x1rA4BkYuLxGV5wH/TfQAJST4HSc5Z1DWt5zVJZ3GqIWuSBzR0awYrSG1d/1nSEK0V
	 0TUl1GAw6Bl3NUQOfOmm7qvKJXZ4gKmAVUpMdLnOqyJSJLru76SzfuspNyDIMwfgUB
	 ON+8JKiRlgmqHACVV9gykNj2xE1qiQgkU6sQu9sfNN/Zn6pZ8QHoPOZ9oCV3FYFVWv
	 J+0B43oHafKvgvKtq97Y7AgU1RQbo9b4aVQn3NfH8UQq9xZ6LwK+wN1ecBVt7E+6AF
	 e4YxgR7YfkQtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98AE4CCFA16
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172772255359.23910.12154182090150639762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1722ad9aaf163280bcc39d2518939d16b4720897b08b06808e8f463141ff5ddd
Date: Mon, 30 Sep 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727722553
