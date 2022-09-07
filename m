Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B071B28E3
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 23:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D196C433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662592853;
	bh=80CL/rdklVywk+lqb3NKBFD8jovaaOW2EdLX5HB+6lE=;
	h=To:Subject:From:Date:From;
	b=Nme1mIrUuUo1xAaRPmj73XyowmjpBzSD8eeUtcYS6CZhv+8NqJbWxPUvV3UXaBMxp
	 rpbMyqFhakxUgs8uWEypV/mFk1CA/y5dsl6zAG35zz1buDuJswkmdms5FJ1aATgtDW
	 aT2NU+xgzkGTmphYDhaKy9RZPEcrjPZycNLovkUMLYx07XJFVT+S1+u5xNHftA0Pgi
	 cYVawaqEJdvmv2VH5k1tqsv+QnsULcwMIhf49GRZrq7RQtldMLrXrzWxdD0wUm2HcU
	 or8biOssxA/lljSOthajK9KoHelzHUvOTaZ5vSWCJ0ylOUxu+wf5DHYx5Gog4ccahh
	 tRqh90pY8uqOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53094C38145
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 23:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166259285333.32261.6505406576682498813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c836883afbf268147edc60517f63b8c84e59dd3af1f2008ca343df12589f7aa
Date: Wed, 07 Sep 2022 23:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662592853
