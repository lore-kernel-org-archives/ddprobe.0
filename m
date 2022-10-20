Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5C287E
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 19:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FD06C433C1
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666294853;
	bh=vwBGevnDmDSwJbLeyE1CFvShu5dmeqqEvu0p+3ZU0mU=;
	h=To:Subject:From:Date:From;
	b=f38KXGYO71Iex3QGMTZDFYj5Sjoi/hssgKCbwW0jObRL1FFdQ9669WIWh9KNC2nTQ
	 7yk1pFpW6JswPSAQPHxn/c6ef2RCj9lYb/YwSD89P9IlyssIU8Ypkn0lpWr4E32oAo
	 OaKFa+OhOij6V5DSOcF75NhXkvKyJxuf6YMWx04MBZzP2sE/8jx9h9A+3q5Eu3Ilyh
	 cdd1WMw97msCUV/ezyfJkEvsYoriwZqffDkBbLAJvXkHWpo08ybdwyZcPrIjDmh/3a
	 tWBlG7td1rcJZtUvXKKDiY1Z/0PulWu9eDt7Yk6DSZ4sRLemvsD/fYNNMU1i3bMF6M
	 6nUF80qG2MmOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55063C433FE
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 19:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166629485334.26733.14423643078608225294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40f6cee2b1f8be3b9ba5e3be672f242b7a5ed0397ace91751a1f1d270b336f8e
Date: Thu, 20 Oct 2022 19:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666294853
