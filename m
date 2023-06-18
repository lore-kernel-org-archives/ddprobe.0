Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D939B15CE
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 11:40:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C605CC433C8
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 11:40:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687088408;
	bh=kOg/3Zt6afNm45BoAW1BxgLqJdFxb5L6/DQW2a29lj4=;
	h=To:Subject:From:Date:From;
	b=ur5O7M4bU85CG+j9Xsw80Ic06CS4pdTcqbaNM8KHHUEoB0UwaZt8BJAAUC/YJchp4
	 tGE/nGWjOOf0+302ezMBBOHzTgpB86+sHKIuy6Gv465JyiqBqnL8at9fCPjcDA+RYB
	 bM5u7QZvlb2ffAN23z/2KAYFkxfbGg39e/2zLPXhBfN7pvYMd3xREdqpwp6RWlTr4u
	 11XCvtpehnK6Ho+6XgD+LF4U6Fb1pdlbfHmZpFJzL/tz/CNBNSKxXX1MJy3k1H1v3r
	 ptoQr+jXH03idpSZB69zC1O7NWk8q2HuF3wxM247KimBfgqb+QvAnCeGO1j+AWiEgj
	 IJEbn05m0xYLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA93DEB64D7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 11:40:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168708840869.29531.6125209384320151649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c55965c56bc5d914516d753d3c7e72ce75a5803f7b2259182c9f66ffc3022fe
Date: Sun, 18 Jun 2023 11:40:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687088408
