Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C392D15CAE
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 23:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69B5EC433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 23:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670283054;
	bh=vK3C7lPumEW1RB7ee1mAEwy1PJVQpdMCTzJgbNyx0TA=;
	h=To:Subject:From:Date:From;
	b=SDXjTSL+tgO6W9DWKBAEqErRm/A414MbwcIFbdSx119Rf9N8LS3FEF2KFE8Of/sdw
	 pao1jzh0wFiOjIuFcqIPdCLzKWsU4P90/AKbEQu4P87cJHIyFeACsD+Bh34rBkYr76
	 P68AYttyaGQDqFheSuQXg9xNVTD+VaHW/XufKiUt+UtIaYybEe6Ig0FdHiuSg3oNBz
	 bPd/BcPo5acCWuVPaqdgkY0ork4OfJZ8ONNOIJTz3h+r4z7DYGReTgWkxgQUFvkCKO
	 e5ISkAXRoBiNKxw5L/ng+PNYLr3T8zBjbUvc7aR85yhvg91ECjMsCHW2LsBndrPUUi
	 X04rXU41YJOuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5046BC4708C
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 23:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167028305432.7623.10107353715595339204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d75013ab9a132b949cda44e12a19709c105e7cb7aa19bdcb56a1802b73af76f8
Date: Mon, 05 Dec 2022 23:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670283054
