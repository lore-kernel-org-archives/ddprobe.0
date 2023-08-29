Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B0617AAA
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 19:04:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD0C5C433C8
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 19:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693335848;
	bh=KriptFcUyw/iaG6xSuHnDb+W5iIx9i37PMQNCYLbM5M=;
	h=To:Subject:From:Date:From;
	b=tkevy4YrhtvGi8++C4RoFLEGie0TaqeIKBKfU4Pio8AkJ2ZgAIjetelFUX2zTCHhF
	 Gmk8B2JTEpq+Xxd2UoK6zAfsZ102IB25DpIWAbXzEnnJT9Cv6/YyuWz2RO1Nm4Z+tV
	 FqN5yaKwntttS1k/SIRtCutnWDxL7UIUB2bkdBsdznfCePSlT8R0jlPJy+lNrtPVMs
	 Ls6I6yAVwmhTxke8PeCsot961ygKWO/wzvrl2c87rHNjliCl58doxd5q5XsRjBskUI
	 M81kA4qmsJPk+J33UqXGqjo17pQkuX6XIrQI1TBDPJxA8Q0M0LKVMO51661407gtk3
	 ICJO8tRkxAkLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A670AC71153
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 19:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169333584867.31047.12112125434821274959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6d61c0fe4a21fee30fa6400c207f0aaa0baa96db880f079a3e25820f5a4d1c9
Date: Tue, 29 Aug 2023 19:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693335848
