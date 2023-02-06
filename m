Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E68053BB
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 18:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3AF8C433D2
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 18:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675709765;
	bh=LpQ5V+7bjCH9mIbj4USwxm7PXVWNiQLvAstlD5FdymQ=;
	h=To:Subject:From:Date:From;
	b=gy1csGfunH4lew7Jj7PKluB6IF5265dJe6ZDIDlajHeW+bCLzNaGwaqTeSpOugjoU
	 J/lYDzhdB1MbWjzvb0N8bxkGJD110fGsSDKqU5KAt6IOgKge0znHuqe1s79oVbZ609
	 DNz4VJNdegLAZNhOJXuPD5egTYg7Nv0dBYbMQrqU+/vw5GKkM2jKw+nPwgLLYUkYng
	 MSyoJKAOp7WderJGBQiNN2DwShVhI6DYtUn8CEdHisG1S9//iWWzmjBTmHuHIYWy7P
	 YH7LWDLokD7ZPTurwdTRBYOKXGPJlH+/E1tQ5qqJAdGKtLejozdaCTzliBkkGsnyko
	 vAiydHXt0T6ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4C3DC636D3
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 18:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167570976585.2345.12259616585468313483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24a7078e2b009b0d4eaaa01eaf890c09a738f6acb2939256ccf615472360929d
Date: Mon, 06 Feb 2023 18:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675709765
