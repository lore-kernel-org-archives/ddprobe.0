Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BACC3194
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 05:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D220C433D6
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664774453;
	bh=YyBNcaCUKjhQNCRngMjPc7JAMRppKSIWJkTy69NawpY=;
	h=To:Subject:From:Date:From;
	b=eC4ZUcItxkJiCQ8Jc/M78vst/726t/klXJ0UZoZY1iR/WiR2KmnJMf6jC9A9x0SND
	 8gWlXB+L5Qe6RVdzZ1X4a14ezIvz9BiljmNNQhRMIBskvbXwYOP3C+we2PuILHQjmW
	 h3CkrqPpssEFaoCT3g1jD51toylsocSdgagngfde8Yo4h591cqzAcBCV2N1BeY9KmG
	 Un1Q0IiOqVQt0k6pdBZ3TvPvELXgUxs4/5G/IDlKK3gaRsED3RZAZBhdkvw6v4HyIN
	 aO8MO8y/BA1jsxqzhPt0v5WijcdziiteYZ7VOriCBUVaYha3IGSB+/9eSfN1tryeCU
	 PupS8U5JJVNFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55822C433F5
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 05:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166477445334.10237.2061336595168528441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b99cb0bd85413bc30da5ed4f6ef4936ec86f3e2c47a1e573206da7194cc52624
Date: Mon, 03 Oct 2022 05:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664774453
