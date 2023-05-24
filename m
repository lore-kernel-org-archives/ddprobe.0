Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A08360849
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 20:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6965C433EF
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 20:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684960505;
	bh=+R43BoPeswtdl7XdhU4AOGyTXcNhqwf2QFPpJIkB2HU=;
	h=To:Subject:From:Date:From;
	b=rEtUtCZqDcqSzWXAsmTaHGDmW1i9jtI3JD1I/6aWQbopB4f10VhbBZRJ6/kqBIg0v
	 stCi0CYTQ2DwrMVdTgxXFVyUWWrmQSkoPv9dK1LSHiUlpJGNTI0FVP5jClhCgH6BWJ
	 GCizWDPqSCBA72soBJzVf08Rs1c6taBkKJxBFtRJNrlUqdYIXJhIyJN9Hm2V6M5DYk
	 qJPic+qAOSJrmWEWGQ6LDCMFa78L8myqFo0GaDu8X1vLSJJRRn0d6ytkHUO2M3tkhI
	 RKYG0Z8Tvifao/lAWTeUmYE63Vl7r2d8QK3mI/s0nFo5KrzlVcrSEsDngYVwKrE4Qw
	 967A8BzOPYi+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C588AC7EE31
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 20:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168496050577.21928.11269539070813406384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 373b4732df4109cd1845102cedd84693fe68d0d42e49a0fded1269153195e0cc
Date: Wed, 24 May 2023 20:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684960505
