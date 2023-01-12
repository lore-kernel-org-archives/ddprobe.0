Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0DA08476
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 19:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA72AC433EF
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 19:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673551287;
	bh=EjJlU+Ze+mKg+8QP2iLuiqvrSe794CbSTvzuYxS4On0=;
	h=To:Subject:From:Date:From;
	b=VUDvZY522K6fwvk6c73Y7eExi8eQviHWUjt6EmOQzNGyiOCpXckcBICrnfvZEO4R1
	 6Wsp5Z2booBjO9OIK46khtTKHpyFpXtftEukPEMje+F1r6fG0N5+R3yk1ak8AK0hZz
	 s86hwbOBPsq0XTPo5mDZ/ciXj4LPz0LYXI7QnzaimBJQ+YTBbdw2FLc1slpwgfuW0D
	 CECr04qGEkZmeo0rnqA2rH1hx5APZjEqH9V9S0P0HGDXlqfYY8fA0Zw68QIb0Qumca
	 OyU5HpHMkGoLuu4stBS+qtzGHaHhBJmEX/nXnNOGhzAyl9BKB0/MHOTsipb+cW0w7x
	 J6yxoRlXxO0rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8C9D4C61DB3
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 19:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167355128754.5772.6516684785599964881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca27447e8bfabccaa10b93350180c93fbfb4d9917e34a4c2b732b57f5f36cf26
Date: Thu, 12 Jan 2023 19:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673551287
