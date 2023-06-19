Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D02E125D3
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 16:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF16BC433C8
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 16:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687190529;
	bh=62kOxcegJnWZJyBAcdG0qOQHICu6EGcKXA1WacnNk6I=;
	h=To:Subject:From:Date:From;
	b=eJj+vP/Z26dbq24zSHNmnlGrAVAT87XCji/rvPl5ZMVgahDpJoX/j6GNYVgjXaVGc
	 GkOrYEajpbnrb3DFV8VS5liPDUwaQX8/z32aa09NWDR4EK3zgSN6VFJ27ZWhk5kJoJ
	 CA1irh+L7FOZmn7jKuPeYyRsgA7mM7721VvWj9KtAiYdHGBXitfrHy9E6lRwAcAtdh
	 j0OYUVlEDjINDDk4ds+QDPRQPTqgDQHPlvN99SDtMWSy6jaoTwb1/6AFl056/6zSkq
	 2LBSy+/wdyG3e7MlSZuXFywBQV2qfu0kZdmz4gXe1Cfn6Yaa5BONoV/0/VoGBinnig
	 fgH5yBTxP9ptg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCE49EB64D9
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 16:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168719052881.16478.6360171712249996883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77ec290dc40e43728eaba2ca69d4b0ac20a902323f927d68391d75528fcf0588
Date: Mon, 19 Jun 2023 16:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687190528
