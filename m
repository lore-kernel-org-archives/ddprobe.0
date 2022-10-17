Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8C6EA3C
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 04:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 648C9C433D6
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665982253;
	bh=bxXCcHnzDKGUq78OjpnqU+1ixan47q76IgMfYY8p7/s=;
	h=To:Subject:From:Date:From;
	b=RorqgHNElDJEo+q9sC52mQebtGxAZ8Q/w5Fk6XxCiwhqFyFoCfQKMwX4qDL0oy51y
	 4MPEDOYdcRMkkkEXz7r+Oo1p/uzMH8l3TUl6scnDEx12ySMQ4vkbghdlW5HTyE6RE/
	 fsa7aOHaDAEwDtJ3OT7PbwxoO1veE6+OJoUwifdbHNTY8ri8tnTfhnu78l6WDdX6Wi
	 YkOMrXxRHCSf1BxdLwlQCgnKk5qPHIhj2gPN5scC4aKNUXHO1HpIdNWYwSzLcc1unX
	 vRKu/byJCG+HTAc/Sku+SAuwSWAeAsDiEwtmbzlHiYQMvgmO1w4/MEyX0+Hyo/otjR
	 DJTREqFu2zljw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E620C433FE
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 04:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166598225331.19667.11128192949845448031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a9b24516ea85770298ce3f40319a233e3007dafc5e755552771bb01ee075e04
Date: Mon, 17 Oct 2022 04:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665982253
