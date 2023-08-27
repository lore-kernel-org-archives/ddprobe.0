Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDFAE100CC
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 21:24:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C565BC433C8
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 21:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693171448;
	bh=2I1oqQL8fhfDWDby50OiFvbPHdPOcT4p0MrKJqqSau0=;
	h=To:Subject:From:Date:From;
	b=tOZlggyStYRB8GbluErGhPO0gzMIHXe3kaiTUZzMuAG+E6XVRLqTrl2uOTPIGa6w5
	 d/LfkfmSISUsklM/dLfu75NREroVKF+Qkwh9VyrWXdwPHdiyASL7uut03BJ/lo01r0
	 wYXWehEBPSha/DLQWsErBzp0pKVyByvQ2yVZ19ZGyOKy7Vl7svewEv7Hnq9UHOObLb
	 4dzh0Mt5/BXOKBpz69PWwP/g1wz7OaZ08owD1KQtJyU+N+d+cdD4gjAWkJ92FUiDDF
	 Z9jBCTfcGu0se7Bgmb8zxSe0x+chkENQ0VCL1qeHR5T/gEtE9hzpT5K+jAuRoi+8/S
	 tIKsumz8s3ZNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A52E5C83F01
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 21:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169317144867.31473.7702570556187388509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c71f0cf4217e5ebc967f021eee6db6df4de79e658c9b02c15aeae686367fb49
Date: Sun, 27 Aug 2023 21:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693171448
