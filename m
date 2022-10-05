Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE928371
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 02:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C879C433D7
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 02:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664937053;
	bh=Payfee8yUQdJKBkJhBq2xoU6Ckfv7kmteX8xDMXRGhY=;
	h=To:Subject:From:Date:From;
	b=dxFkLCoMsc+5/CUI4uRmsSUGlidlreGftC9pbjbnucdSNzprdBiqG6PJS9BI71X8T
	 DmTGy+gg38qlWSN/XY78R18PgG7bKGFcQlxkjucmeWGRkFZ1htj7tah0+hRu9LSV+D
	 H2IiAVtcjYPb1M+750iz1l4hd678D0T4cxKr26peU5irMNTm0cq3AeD8rE3Va0FgAk
	 P+w7Foj/cZwI674X4x9AsODM/n8ovQCtZ/thQi0DR0XF7mVTowuTRwGAcvF7iMaqP9
	 xXBlOj4RImOvUCYA/ZswjYo/0oRHexiyRKispw3XiTwZgmmPRcJKEYpu0LNueIMrnY
	 eSLyWNQora/Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52319C433F5
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 02:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166493705332.26860.6880346967969105742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc798ae89749af65a12e57fb3e7550864d97b63508bf8615e169bbad4d4e5439
Date: Wed, 05 Oct 2022 02:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664937053
