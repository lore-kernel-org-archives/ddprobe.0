Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479237FB
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 07:08:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6ADBC433C8
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 07:08:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689145688;
	bh=+h4zjM5JG+r0c8Zz4x4Hdf+Ij+jzjnQMLyq/v2LwyvY=;
	h=To:Subject:From:Date:From;
	b=D9HhTwsNxG+TWFlLwHs6/0P4iInOdbITmDRZfts4LxMQHuj6Jg5SIZED442pQiAIT
	 P0uYcVbZ2PXaxwSQinRM+RdHtnjI96WHmlr3HQItMrg7F1dpLnWQvuerlDxpvEzATr
	 eej5V93KL2J4qj4DbfT676V1j5BlUz2EzaC+uin1QY7oXW7pIuP8AeF8RgaPX6Ge33
	 9TcQ9jJL+VbslcVm6+P8VL9JL0BtANVYBFsN65tgFVXpSLPZDPOy11BVhSXlYQHXBf
	 Q6xPOgeDRBGvqEiEIAsHQuIsJJ+WXqC6z51X046UykLBHes5VO890fwGg4JsaLp4sI
	 7p9sDdu8dtryg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC36CEB64D9
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 07:08:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168914568869.3402.15169146881626571046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4c79322c06c35876ab557e4d09a7c7ce743f6ca0dbd3fbc1180b195564a1cc8
Date: Wed, 12 Jul 2023 07:08:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689145688
