Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7E853D6E
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 12:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85EF1C433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 12:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661602252;
	bh=IuZY6P9ojb/c4cDRKXCHaIaz2bWjQ53YqrIVpI+zzkE=;
	h=To:Subject:From:Date:From;
	b=ZU81J4g1IXURGt69GaC8o6rGtyTMo/FC8R7fHG3MrnbqlxjjunVh3MLlZXegTjBOq
	 JSH/Uc6A0ZQrgp62RR31XYn7XYwunios00LzS9b85xkRWFj4ZywOrpXUJYl0OXVQ0y
	 Z1DInwAXpkGC3O4IhYJANJ5qYgpoO80tGrAwoMxfW9IWBijcansqLRd6+YQUC1xHxV
	 qE76ZVOK0mryYUPfNQ/FTG2B/9NUB40XOeBtILZFlwH3MdsnJyaC8JMCdpu9R/EeFU
	 QFZbhsYoH9LefPBhhPNTf/GAWCQe9bvBVjvMc3jF5qHrkGYXIsqIOtjJj9fTMGwzJJ
	 ewG7pO5G45DSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61241C0502A
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 12:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166160225236.22597.17446266086548376558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1048e4aaf8762d2f5007ddaa8eb93ed0999e27c5e09736e9097792fc23dacad3
Date: Sat, 27 Aug 2022 12:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661602252
