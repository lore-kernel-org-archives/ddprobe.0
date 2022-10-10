Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9CB47E
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 11:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 649FAC433D6
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 11:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665400853;
	bh=s2AKVqspj2EtlFrg8HO3u4D8yMAhRHiM4HMozTlQFCg=;
	h=To:Subject:From:Date:From;
	b=tWI8kxMfHaag+8bjpcHmZhv3ycXNozgHJ0OiT6/f9k6o4fhgWc30VSeQoGCcqdKZM
	 CNYWESB+jWIrcV7Zs2YP0+/fa4v/ErtmX/uCSN7UfjQT+HPl2hQOrQ3Rdx4BX+aAWO
	 MLn5NOlC7OhAuOjRouqg/OIxrbAIDu3MxR9H3pztwkWfJ/YA4DmEg1NCvsWDi5ZDyN
	 1rNSL9QDlEvZneFt65INkFgm2U8b8EH42vEn8wtMXYNH7tKzEfpDg2Iel/ZWgrVeNz
	 uTeBfnDrQ1/713pspjbleKRFLT8fh1Obk04SgBtMwFN6S/B9dI3bejELx9JuA9cqPC
	 P18ni3H6jwHpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E947C433FE
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 11:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166540085331.27847.10667226021889304869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 777ae409bc6c46ddf60523e1e31f70152578698079c8d723fabe34fe71113d9b
Date: Mon, 10 Oct 2022 11:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665400853
