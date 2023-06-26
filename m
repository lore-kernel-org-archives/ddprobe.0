Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D441FC0F
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 19:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9115C433C0
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 19:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687807988;
	bh=aPLdbf7Ql4rHlJfA8Jl2T22j6NizYaqYQjkuQSGzLSA=;
	h=To:Subject:From:Date:From;
	b=Qfm7djUWFc5DGVk3Aq9ExTBmkU8PVlRU3DoGteiM0OdrCNoQNaJymMnPc7wwHmrCt
	 fM24eLMbgVx8PyIguJsL1tbWf6GeNSV9M4rVOJaIrkw2Q0RSngKPZA4L3g2TdeESXn
	 nOrUPW1aGZqsrbhKk5brQTU1lKJq0OyyOr4PZPMp637Jq/EjGdPoRfo2qZxWb8aK7A
	 LJdiDGGVT4n882Fo95eC7gtKxK2QIy6CSVelX2J3BDFYrQp3baqzuL+B0GA5jWcWfm
	 tUZwZg4lOo4RVibY2kX0bC9OHtO+JfGrYqviQRsxi6PDBuLnE/rrEfFhgVmIqKoLeX
	 sC6BzQ0C47ciA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8B33EB64D7
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 19:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168780798871.19391.2905049537477214776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cfa818df1e3b56c63f74dd2d68e7d36441e2b6d0247aa1470f8fd8bae95fa87
Date: Mon, 26 Jun 2023 19:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687807988
