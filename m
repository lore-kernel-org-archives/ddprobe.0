Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1FF015A9
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 02:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75969C433C1
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665456653;
	bh=2et0JqetD2gIcO9LT2koEC4v8/G20aqIWB+e10DS06k=;
	h=To:Subject:From:Date:From;
	b=ZzK4Vk7wPAbUlAiFfDKO/mPTuG26XCbWu91NNnJ7ATYCHIqUSfZv254aYvPECVuy4
	 xSE1KGr9XiaAfgqMpTilW1+f4/KWNdYLlu8dqNwxw3te/ZYtgDiZgELT2KbXS3Vi+J
	 SH5oh6xrSh1Z8y+IGblr9YeTgilJxaNiB57rxPuqXjD2MO7IhMFkA+cg7sHijR2QH9
	 SUUFwxrMb0XLL/+tWxDwpKxnyvHeEvjgS87CzbTIGvrUDjgXMveHycXDwH/2e3ksPf
	 +ZrddOBbA8tZPimrTLyc6bZKD88nnVXrAOKl+2iKT3i6K0qe6xHQiu3mIaJENLeQfo
	 RGHsQND+h1UTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BFB3C433F5
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 02:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166545665336.25269.16290624481242913608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44c4f8c75a80fc9b23d5c0b6133c7a573391639ad950185f732878d985e3e52c
Date: Tue, 11 Oct 2022 02:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665456653
