Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D83A31
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 00:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF393C433D2
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 00:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674606785;
	bh=G7osJk3uZlCzbAUm9KjqAV909CnGqvvaWhH3CJzQj7w=;
	h=To:Subject:From:Date:From;
	b=WMM6AQnDzaFxWanwdOiPgt76dipxCa07BWmyXUWxtyQNvFGmSs6ETtk7JUUKXOfIx
	 iLYb2c9teJT0N5K008LpFU/Am58rihDkL9KXJb+1QnNeFWhh6fwhtO2cVITt0WND2G
	 jSMj8HBO8Nc8yh3KRozeyGPTLBu1wW2Ncl2J9JZMCYUBCt7ioa5AgmWllbkjHLWRDy
	 N3e6k4O3MufesklQQH6ZGc0seEiGFZE96Zx0q089WY+EhduTsdsNfjW2Bty4lAAvzH
	 lvaipOPQITw3tJQfehqIk4CxMyctHIVgLcTZusdnLst4kw/h0Tj1Cz+ORhlgbp0y1a
	 DYR2s5c3ODmAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3976C54E94
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 00:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167460678572.1634.4168854510912059215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da4abfe87a09cf6a42edb01672ad81883760eddc711d35f7ddaaf032145c07a7
Date: Wed, 25 Jan 2023 00:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674606785
