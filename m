Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB2D01C3F
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 14:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FF55C433C1
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 14:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664463053;
	bh=6PI7vD8q7CZxVG2mGWKm431FfRglOig6LLIHgUb2hSQ=;
	h=To:Subject:From:Date:From;
	b=ecA5OQiNLly3+M6ewM9CqSXMAzhqF1gGjedfu+rWeFVvmL0KRDUMa4iWOVcrCGcOl
	 mnrpUZ2zd7zwKfBynav9x/CF4m6jCXY7hCnADlvtA45RdQpg49NNOdGYfJg30PRX4B
	 QLjD7+r/yGi3Whp9GDvdvnqYrUDu6a05st/tnS8XrO0ljo+gFjXOd6oCZC/NwbKlGU
	 t7yXOujeFcXtIBxUxGzM4itxI9psevT8ajj58lcyphksoF6GgR6KKfHjhUzsA6PYje
	 QHp4UcOYjl/0n07jWrQsP4SMU6XjbVILcyj5H8luVIRgBxw5ELITKO0dhgS0yiGIMZ
	 vHB94kg/Mrfxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56480C433FE
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 14:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166446305334.27046.2834257831582548905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 704b2bcc5b180050880f4ca080992ba3bdfda9c78884e96d4d018721376e2a59
Date: Thu, 29 Sep 2022 14:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664463053
