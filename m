Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5826A12B66
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 23:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5945C433C0
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 23:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687822388;
	bh=YBM2CdQuOskucRY0yfKyPjHRVyM7vDJyKUbAoSi7Kyk=;
	h=To:Subject:From:Date:From;
	b=B1WVJThbdr6evBEZobIxM1t5+wOOo1LEgrlXSGYw3aac+mVZEVlZ1HoVzOhRMD24I
	 4Y0U06bfcXa0pdQYjyQ07rQSmEpuBB/xY/JIXljSflacGgPggSGxvs9Roah58YDXL6
	 2e3A2gn8XJEQxKgQFp1uEPEvimW7AuqEEGE5opCKT7EbzySuCJmjfvemzWGWWieQvs
	 6hMtQzR3VM3gzRQnlJowapqkk2dEQKMiYKvEB4C7WZuy/+8pxRc/2dc4+p9VLFhsnU
	 H31BjJYzB87X+Cnb8g9nBaXCJUcyGr58dsic0uA9f11YRNOq2RdEASmECajRo7UMfL
	 XlShyOPVLoz9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B77EB64D7
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 23:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168782238868.21305.14826770845379519017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7fcee6d8b2b4a04bae72b6acb6cf6b45bedd9e2df2bc080d71adb2ad4a4db3d
Date: Mon, 26 Jun 2023 23:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687822388
