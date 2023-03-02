Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34770EC4
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 03:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4CE6C4339B
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 03:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677727565;
	bh=UVr1TMlYPL9CuVTlPpxhyWgWR3+9auxZzXlobdB1zAw=;
	h=To:Subject:From:Date:From;
	b=Knre/gRsOa8ywGbQLyBi1e/5JzNp0NFulTcM9UmQkeq1l6PEnrXEAMGX+uSq50IHG
	 /IIaTX8nWl2p6nl8vsAZI4KD7G64j4u8EOYacvJxTTFirENWc2cIhcJraEJmjvlqae
	 koPutQsl93H0vzjKopsb3UQiv4TC8TPWmdTZVQBUfblIcRmSbWAkXLAKIIDROx3S+1
	 XaGKo31qRggkZCvVWv9+XYahHIPYf/Mnn/gaUBuv9c8o1LCFxl7+3nKnrcczK4xPYP
	 0bgDO+WXoHbPUIjfo2q+gq0cy0qze9Xqcw4/Utmono9xvdBbYN/XMObX6Bi790iY9H
	 xr0481EMh/jaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7DA2C7EE23
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 03:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167772756574.22850.5409589144072057906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62f09d0021a1dd5462ced3d27a302e718aba671276931aaeb26f1fa2993cd39e
Date: Thu, 02 Mar 2023 03:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677727565
