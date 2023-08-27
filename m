Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69B4E14014
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 20:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C89F4C433C7
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 20:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693167848;
	bh=UTWMSYtiuh07Ca6cktt65vcd1BQfKQbsPOtCeetIdws=;
	h=To:Subject:From:Date:From;
	b=ej3OH8cQWx+X++eAYdJjg/zWl+ADCm30UHmYsuJ9tBIXkUGsUnppYbD/AGLB8/6Xo
	 tSBdsD/XjDUXQPxSXjDaqjZWgpmnbQc4y5EuDUz3gZg2nWcx+BINF7CqO7nSGoEEqm
	 omgQGG++wX03gxonxL4oQkxnF81qY5FOevfK/lmUWPOwD0LEn81ykeShyVrAwGGF5c
	 y3RviKWuppJTCR4SNQAr5RNKkoE45w0ZJvnKlCxLmSTcJadnJipztIopQkKk7IJHsa
	 LtD4PKyi5tclZttu+CRDjcpuWE9AUDzt2k2CAirhXAA1J26/vW/n6nTzyTra3wzJdr
	 8HZ/Z9tg4GY4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A5AC83F01
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 20:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169316784868.4730.11494494974640265065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21b68cb4dfffa2ca8ca30495da367d4e91dec2b3430b3ca05f44f6fc013e9789
Date: Sun, 27 Aug 2023 20:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693167848
