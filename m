Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BBEE847A
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 17:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7244C433EF
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 17:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677691565;
	bh=V5h5lcn13JYkPfp/QytXMTracUUOwXFT0uwtgltzHLo=;
	h=To:Subject:From:Date:From;
	b=B2M3omVU2XLi1MMiz34SEjSoH8EHQF27i5/E9tiMP8RD0AVzGBfCyv9T8GG0BvEJC
	 VRZbQGItB1bFbBPMwG+E6ScjZpwTaYsMtrPbgzhE47kaJJRAskIYPqU9IjoiMHCl+p
	 z7aBsdBN0ljFcXikMYfmjca7h9nw6K0Wa9tL5GFfJtFhhC7qlpfzguvhwyWGAXzEd/
	 xbHVUliRKed3yP9o0k6a5wu0l2de1bwtoKz/lE7HJZcX+zKW29W9r9LOOwjAXcOC+/
	 dRikbaKNf2NpS8rWLAXfSomjuaz4b0VnUoJusWUSvb10TksagHgBk3b5lMyhrX0/mA
	 fnlIfkkToCbAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD94EC6FA9D
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 17:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167769156582.9088.11781509753080613541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b24564b44599ca1a14c5f7829523cea5d9d20cc4a0c46956cd852f659b840e33
Date: Wed, 01 Mar 2023 17:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677691565
