Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7D297E
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 02:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85623C433EF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 02:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672538487;
	bh=TrZTLIq5iQEF8A8f+wcVm3QTg2lYAGqGyqhU3LJ+IOs=;
	h=To:Subject:From:Date:From;
	b=tnyzJuCeJpT9MVQnj9XQ86YTJVc2yGgXLoElm8v9oGyViZgN8iI62qtuQQCKsuL24
	 kf5kW7blhbYe/TWTQrgFvv1KvtutXRpOqQ4fWH00Bs7ZeuwvqUbWVJ40U1DTS2W0mb
	 eJ1O+CS+21gEV0E83qa+mMqBbqln9wj7ymruCYs2+GPFSPFyotOIPw8QWbzpNqMf7+
	 so1xAtO/1XSKg3W9Gk3OupzyCPovv7FnczfaNychtm2Nx7/Yh3TP7xQQom5sU51hab
	 5WhZ725LioumpQUxztq9gO2iWhXVCyHRwoA0u0xceEkg2BJTLH+b1NmxCLfL5dg3CI
	 V9q6beyVd5jsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66518C4332F
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 02:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167253848738.19205.3891098541756906156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c78c7ba30fda0090240eab57e210eb64c3c57c15376d4e519e42427137848bd
Date: Sun, 01 Jan 2023 02:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672538487
