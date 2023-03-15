Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C0AF53AB
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 15:20:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0F6AC433D2
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 15:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678893605;
	bh=CAkAphMNq/Sw+tCuub2Sl34ChPdTrd+DR1C5Oihb80g=;
	h=To:Subject:From:Date:From;
	b=LhwxZ/EZlHXYyxizRqoroD4Wt0EQaxs1P502cadWJopJizQz0dWHuZM92vIbQaY1n
	 bv+N6ZdBjlwwp2bBLCsc2rI4PKzYasv6VQbqMRyfwaJnSA/WkmGm65K0WvnZI6E8Fy
	 ENC5Flv03hrAtSH9PL6LmpC3X81IhvcGEyp2uo9CVMy1GHhUNfcTPTcbkj9AHKOZno
	 WuiSdoPyQ5Ei+sfmJt8y45f9ZcnLhPqPIEE7ylaavwLOmTzYjRa9OLnWIwgF5tssLB
	 beMx6S9SlBketunNlMNhOllm57qWeoZCzi5/C0zcvOzCM4YMJub4nKSpsbJ3s/ZG74
	 0iewJnk+uUMrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1D88C7618D
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 15:20:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167889360576.25245.6352964396960219613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9c1b9d5ac53ef4a1937a8abf411176e9e8a1dc0d70524e5736e07be19626cc1
Date: Wed, 15 Mar 2023 15:20:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678893605
