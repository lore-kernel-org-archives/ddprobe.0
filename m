Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDF68184C
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 07:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E0EEC433EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 07:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671521487;
	bh=XcsBYFJEmBU3KiPb0sQ6n0mKf1jOPCfSX9Auwz4yEpA=;
	h=To:Subject:From:Date:From;
	b=j2bqnp07Iy4Da4m+XCsiiPOi4duaRqOp5ubInKqk8jrDpD8/o7QB+cFj8vLELZ4R0
	 iHFY0ojEJpg2IWNOSHg6V1uKQW3WaonFCWtGAbYdC/W4GjMV0yjTfLKuJif5c7NIWM
	 qWDD0a3H0TEbLThu7gLXd1ZQ6KA1+gDJjPNc0T6qBeWkKWdCLLcCcUrDiH+x9IZlwD
	 JvO3X1etDac/6c/Jx4q5lC/wJzutrOg2wgDH+i2XS2PeeNc8TuuFNnQsb6TUS+LKNd
	 u8DjZZi/xFebL9498s1ZQge9nVpX8Y5YSEhF3OiEztJB35JUaRNEKwZUeVRMn2Mzci
	 gor+2x0W8Hxqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62660C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 07:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167152148739.21488.7387434561497056998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60c6919a99cd956dfd5f44a2ac0dc8e570ccc73bb9f42ff1d8076ca11cea744c
Date: Tue, 20 Dec 2022 07:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671521487
