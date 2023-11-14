Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10A374177D
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 16:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XLuzjjRY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 974C9C433C8
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 16:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699978096;
	bh=XJ74cLvE3XP/dVyQ4SFc5sRGixpk+JCsDIOyarK3D9s=;
	h=To:Subject:From:Date:From;
	b=XLuzjjRYk0CuqkDx4QiWnYtxkNfmKj7wNwmQ2NDcBorK+p+q/5jrX8YmZ+p2jvYOy
	 CPazzI20hJG7E5FFwLcxreqp1ZYT6FT914c3OOcmqX7hzO0JE4oEBUqyRXTBoBJ/73
	 U7xLJL4AfXmbXXPN7TouwInEs0NLk0F0kGxgYZoaTwDJTn/JGqR44js9Q6P9+rvfDY
	 P0FDxUjd79yFlBUBi/M5isUqHPo+g8v8bWiUImZm7KtAkoRWEEsZ4BtJYyTGc2RnB4
	 HYtk9DxD7U8ERzfVJ0AZc6XgAzPN3FoeP4aAlcpPuvlJ6WUyDj3UDnxT3uVT13YWuz
	 p5SdoJFPLwrnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F415C4332F
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 16:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169997809644.15269.8624861361751436281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 926693962e6aeaf14a1c4a145f851c08c3ee49afe912d735488120e2ed52011c
Date: Tue, 14 Nov 2023 16:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699978096
