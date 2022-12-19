Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E19777E
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 03:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86F29C433EF
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 03:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671421887;
	bh=vCC3e3XxyOWwGL2SB19j8cK+7JfkvIauuqJkyjej9oI=;
	h=To:Subject:From:Date:From;
	b=aWcO6afo7oWmMujeFLo/OdeNdNCOXM8Q3zcsNxrfO9cs/1PHLxn5rNfefJVisq5ov
	 6bI/HLfHKn/F3y3qWHNqELi5EAdE3jfDtS2Ru1KWmeYUbtHlPzspepYgan8stpGdUD
	 g/zSkGdPNicOufbVa2IdbGkfLT1nCu9wrKryEnYDm2ylhr/ljtp3eGWWDgbq6DHtbj
	 np8IId9V7x2mSGz8wESRvyjjG5MDTAC9PaTM6Z0svMCDyDMKwwklIXzByu67Tb5mHS
	 OVhN24gRkJ7b6kpJOxEA9hIGxa1PRXZe7LfEnn2iHNtWoCXdmln1eJf5md7xiG6Zm6
	 PpIj9UpXNZLCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68BB7C4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 03:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167142188737.6247.7041787536263579200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4afe932727c0a474818151ce12142482a25ac26ec860d3925283ff232da25d24
Date: Mon, 19 Dec 2022 03:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671421887
