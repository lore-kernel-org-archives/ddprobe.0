Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3901729B0
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 18:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA411C433D2
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 18:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681756745;
	bh=VAMTI4c7JHihek19KrPsflyFdi2/AKyrqMr9NW/b4Z8=;
	h=To:Subject:From:Date:From;
	b=HCusCHuVmC35+00xB+RfzyiAiEdfx9H4kfE7wDlY4XF2Ow4D5LelEBMOpQt/sd3nH
	 Bit1CXF+AW6jztbISGTbY20udy4d/dpVXYnKXUS30Ke214OEPhLNeU/puwoEVBXof1
	 E9nyHXngmIyqRqWHiVJZNQl5Y1P8JQqh5FWSg7CA9ZsW7QlME8+f8TVQAdrCU1ba/b
	 yeWhHP7b3M4/st9JrQ06fr4CJEj9GZb9REZVNG44FvAMadfEnyOlSqGNfUthAaMyvz
	 qVQsccZJsgCV3601McrGex+mvwoafyNc69ZKLr5gte8+Hk3UXDGsjMKZB1NgXkAWjM
	 t3w5mIEsePEDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD6D8C77B7A
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 18:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168175674573.5176.8854696994511455133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 312ebd3dc7a9416860e314b32ba34d5acb86dfe6f583e1a829ae48f0550c50d9
Date: Mon, 17 Apr 2023 18:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681756745
