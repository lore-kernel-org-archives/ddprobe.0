Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A5C328687
	for <ddprobe@lists.linux.dev>; Thu, 26 Oct 2023 09:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L2gqIooC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89EDEC433C9
	for <ddprobe@lists.linux.dev>; Thu, 26 Oct 2023 09:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698313696;
	bh=P/t3ynHNg74/O7WaqDv3kP32My0rbSv+bJepK8LpHw4=;
	h=To:Subject:From:Date:From;
	b=L2gqIooClsLZko0JQVaEidT8hUin5gOp8COej0UuUeiKKk9ftJs7YLtEpXcgYFM32
	 0LweSGKQqRi59zNXgwzMmz0/sXm/R8IWNQ/pTfRB12oyGml2JQkgXAO7iI2SPqEtDV
	 W/8zR1FwOZWOjrfSZpFBHo3QiPh6W+rxWD6mEqVrfDnDAewrhNAMKaTKVlyGytYY9i
	 DOYpywZ65JlqfcUke52CkC1JrOGL46pjCSQ6UMYkCtxde5+Acq1AzRBHudeJ5yZ94H
	 zsmDlpsbqr95L8WmYd0XOOTN1jBCKMqOp2nDA9OFluwddSVWTXIGPsYIB+BlJ4+1wQ
	 b6Z8za2gRnflA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B47AC25B6F
	for <ddprobe@lists.linux.dev>; Thu, 26 Oct 2023 09:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169831369643.30722.18252247099318682110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35e0585d5e3d013ec716a46a3e41659065dfe16542b93e4d533d56839a45e12d
Date: Thu, 26 Oct 2023 09:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698313696
