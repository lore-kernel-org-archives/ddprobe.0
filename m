Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F22DEA8
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 20:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0650C433C0
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 20:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687206128;
	bh=3ishfxjbxf+7i4hZw46XOHNwPhNXJpg4U53xK6VOXO4=;
	h=To:Subject:From:Date:From;
	b=i6aabs2I/gaydxzFBxgvul51nwRpZ0SNGwTfaWe4v13uqFra5CC9AuEhBJAInYHNF
	 6lTEIBbgesW4amc2E3zxsn2srfNpE7ey/kl+b0A6g6j+VmxvMQyls9gjtw5hcLQQk5
	 x0ZmSAAG7XlhQsmx1ls0Ik8nzlgws5PPsrxHN47oLJ0juQ9oPG0Sg7mn+i5VGvQcqB
	 SqRDTY6xxDhKyuZ6+gDa+lqWMJE0uxAHyfE2Bl3wEu03SnYgsIl7XEZtSiocfrtyAE
	 XQ8/05bPUv/R42iJjaImg/MF5lOhwLYjTppfz4gQMuBTAPUY0D9/JTpU3E8RAL/qe9
	 IJNkpCiX8v+Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B301CEB64DA
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 20:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168720612872.22021.10781901485221442728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66fe15f0da86d694d8c7f034e326b64d9588d465071d9a87465fca7fd4df1096
Date: Mon, 19 Jun 2023 20:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687206128
