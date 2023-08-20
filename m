Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39DBF33FC
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 17:34:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAAF3C433C8
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 17:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692552848;
	bh=KSRxmnFKJ7GByqbjlETsRzItBmsjGbd+NVEGZ/HbK4g=;
	h=To:Subject:From:Date:From;
	b=bSOj8DzajXDihqqZ8DlwTsIU6ubTfw0aKUmaTQztF0sYTAuPhUxKhzCWhDcXP56U6
	 yKuxqL+B3CjllsTsWpjIY4XH7jloggqoUknXCIYHpb/ZLeq9/3WyZZfa/NlxAaPgaW
	 TiDUjQmeYIBp+kP4Ex1nKt27XxbDOujV018ovUwhPL2nYlh+0RnAcLdNT7v59NHPnm
	 DkwSGP8SdLPcrwnBUSs/wzJic6j8q/OvdMQ92HhbHGpUHGRFmDnWRun8jepJPTyHtC
	 19cNS+ca5oHvNWNTuVBrbJ8uHuf5EI0wJ5JpKv10wgX9RaXkXa/FsIYXFgqM0tZy8O
	 Ij7n2XmtNvDdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2245EE4993
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 17:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169255284869.22580.64596812167558821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3155cfaf3cdd3574a0396ff378658e89e75834e17194337b7589dd98bd892d69
Date: Sun, 20 Aug 2023 17:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692552848
