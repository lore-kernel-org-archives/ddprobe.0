Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDF231849
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 01:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aOPMj4mU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79DF3C433D9
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 01:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702777696;
	bh=lkIPfjzUEgGtme9AZ66z9ydVqhEbfhBBBcG8t3orU7o=;
	h=To:Subject:From:Date:From;
	b=aOPMj4mU+OwBA+84nDMPDTagXK7vT46Mk0I6GnfsbokRcVlBEMuhuroJxVGXVJGEX
	 ANatyVxEJSYDtCajBEZTWbsh7gceqj1+8lIco9nPdUcArtiW6gjE6U8VpORVxDvs92
	 JU3EfdGiRimTOA1E70zTD8bTxzHJt6OyCJSsFiyRnjJbvs4yaupr4HRHPOaPfgDsaM
	 Nd9tsA0l1gKncG/F+/xFE4FyJR5ooW4uc03UGlUswhFT07SSeHfIJiP/xGm6LDMj7N
	 Nobaj3X21Oto56/E+Dyyq0yHusgtspEceWGKAH2ndhz+igbBJaEOz8QDvBRrPYSuHH
	 PlENC81Ye5Lhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FEA0C46CD2
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 01:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170277769638.13688.9199815347985238673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65a2b0a7807505ecabc9aaf93bbd42bc37d5076a87822dc00f3c35a302cde239
Date: Sun, 17 Dec 2023 01:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702777696
