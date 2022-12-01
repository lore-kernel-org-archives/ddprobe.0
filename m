Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE7057473
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 16:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73628C433D6
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 16:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669913454;
	bh=6uJCLL4k5QfANELjnEG/ncFkXbTlq+9N6CrWYf8VHLo=;
	h=To:Subject:From:Date:From;
	b=RK952VYsP700Z6I9B82dbHq0vuu+Aqts9Q6OLCifm1iUux6EIJiU62WzOPLCcAPeP
	 KTRnjBJ9el9meEg5h6csLbI0sj4/1kxUFTB1S8q6Y6+VSX7kpDcSyB06JMYKKKoj65
	 v2wiBlgZ8F52LvROUETPtxixPlziDiVMBfklRMxr75Pj5vRtboPQRL55SKZIJJlYpF
	 DTf76XfuWm6yH4vZPiqWh6ZEgdSFgAvOflR/jraZdruoy5UcXehKIz+AalwReHQeT+
	 oFwWAXUyUZULRAmyQgxUuRV5QdvjYcP+GKB/20JYCERwp+qn+LEDMMc8/QjBg+V/vA
	 G/AyKIzqr7WWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56D1FC43217
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 16:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166991345434.7101.17612090011318248283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8645b5a627fdfa9b77c921bd4c90f6f72086e7d2fdc1dea8bd9dbe84563dcc98
Date: Thu, 01 Dec 2022 16:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669913454
