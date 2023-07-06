Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 563F77F
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 01:47:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4B62C433C8
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 01:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688608028;
	bh=6V84Q1FhHTdT78NtttVaiDnC42bJiXCY11cz/6/OAYQ=;
	h=To:Subject:From:Date:From;
	b=iWmt+1DsSuaXK7P9lMM3CIhORzV6MSoyEzHDwOBdjKsRyMwwtGfn9SymOv6UnwMRL
	 rDaC3HmIeE2Grd+zd7r7uX8UJdROPnVZWShFrYNp4EZAVZ1CBo+4q28OeNmqD/u9qK
	 U3WidaJ0YWsYSTp7+NVbD9+OvJe9g2531KJUzjtnUzaXvsP8/YFEazDaiINt1oYOGf
	 JInK2XngEFHOHnSwVDqA32aPLw1/PmWAE7eUzpaM71oyGXLsk2e5e3lywu+89ZSS9R
	 Hz/ATBkpW8ZH/r/Vu3fUkhrrIZKqlurnLCdWAxe8pA1wOtBJLMq2AvyZ6rIY6AxzaE
	 0N+qNCJuTBLkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA043EB64DA
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 01:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168860802866.17602.3437991290154419043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bdbb6534cff8c6b6890ee30ad6c710a434efac4f9df9128fe69a0939fb5ee89
Date: Thu, 06 Jul 2023 01:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688608028
