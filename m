Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57C871868
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 12:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFDD9C433EF
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 12:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681560846;
	bh=GPDa0cGvkbVg1xBbDTE9ATsppQKQ5gCWHNKILQm6lJE=;
	h=To:Subject:From:Date:From;
	b=BBbMcvucDXGqQI7SX/n+nE0TWspld5k/oqOD9vkXIlWBP5pvGk1qH5q47bgDO8/Hj
	 N4sievQtVMNji5RIYIzUIIew2qzlG1bZuz/pAgm5u/+uCp/Oab+3H3jtyb5w0iFcRe
	 XQbwGtStpurnZXzPpiENkRVIHF//jpxEeaLX6f5XLZk7Ls2xXp7jlJac6fiN1oPBJ4
	 XNYpnJqGu/kdBhpiHvgsVIrCA8J1g4qLZK61zm7zvyUyj29rUEi7Z0wk8t8QlZLgjm
	 t2dvsusDmcAYGPQfpPrnafmH1LAWgcOGm1CDOyVw3IdAVYDls5ZT27MGYE7lkFrJ8F
	 hP7dSNnX9/7BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF926C77B71
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 12:14:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168156084583.31740.7774693220464454093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c77d58687ffd97dd1095831ae9d0bcd02c39a4a4ca450dbcfa58a396be365958
Date: Sat, 15 Apr 2023 12:14:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681560845
