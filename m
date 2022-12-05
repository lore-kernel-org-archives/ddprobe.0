Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC01815C9E
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 21:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C9C1C433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 21:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670275854;
	bh=JSNpx5g8M7clHiYSEh0Y3bY1/nldBl/2DMp79lIR5X4=;
	h=To:Subject:From:Date:From;
	b=unYf7qgTPQ/TTWxNZKVkP3jWNzqAuuhlykndAB4nyBK+c6/oX7DpbFi7RvH+RAvXT
	 fs/7HrHqKQvO8g+X7Uy7d76syNGTssSPsByLZGmwDuaWWkLyBUku7lU2Fso7rNwz8B
	 wCNMceMIWYUZlnkou18q3Y+cbNuw5lUlGrS1CHG+/E2UGcl7l+DmOY2tp+Yi0aF5is
	 enbCFtg5NU9c1xyL4cP2H9/w5bvpvIPDL+k/hRneYIS0IFYPrvsGX/1/IFPspjlAB+
	 a11tmLp7hyYV6PTfOGY6fop1V9hMbNeGb0UPixtGTRvZBa22SJj7EO1ZQTAT2TeebJ
	 K5NAY18AQ1IuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 543D2C4321E
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 21:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167027585433.10897.15346675012741856866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cf2b0df91b5de8afe1f7c0c6aecfed5719911e22273431706885e24d1ca6515
Date: Mon, 05 Dec 2022 21:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670275854
