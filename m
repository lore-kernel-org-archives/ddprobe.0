Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4058940A936
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787569834; cv=none; b=EpnX2d275Ya2RG0Fz1Yoo329mkKsIhswg7p3bLlPqNC9FZKUCLX+D8zWPxFW8PVDEPvnMbwSVVEcqhqsc86zu4W8CKdgsUHX6KIE20ByvOcnniIJzWfNPmPGMN7BLAMLdFubbnCsrUeXcQ3tSfDXqCXMrkoplkrGtM71D6k4iD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787569834; c=relaxed/simple;
	bh=h83ThQpwk3Zgm8rSBhhLzmNTpNkWdlpSAagzFdvK/PU=;
	h=To:Subject:From:Message-Id:Date; b=tjdUc+LvzxlnrkWFafAZ4JqRiz1lelgmOyj+QU80SUTgt+M3WahsGKo8yLIPUQgFNvwdQtfArB6GFT1HigCYu60JhtUVfSjl3lZIGi/gTHDhHdw8cv95AXEDagTyqq3ygC8sWO/VkOPNJGwPtl9LFz954dKAAzzQHKpvWOPp5Bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WzTuDCaH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WzTuDCaH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC3A9C19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787569833;
	bh=h83ThQpwk3Zgm8rSBhhLzmNTpNkWdlpSAagzFdvK/PU=;
	h=To:Subject:From:Date:From;
	b=WzTuDCaHFUsQQRYcAEyUx384V5j5Y/K8kJVxhYNeQ+TFuX7SB091kbjbnGxyiXyfz
	 qH3a9WB4Gp5tbUe+1XvoSqD6H9xSa89pCbXdtql/4JdfC7NSuHxjX/pp5Clx7JoGT4
	 IiNLcpWaxQm3o5FGdPKRr7l1sZUVa4Igl9BQFzO+TgPID/+ShLwas6STSoJUbZpv+P
	 5gjSdwIPyAYRI1AElQBfjVBH+XSrpkOKz4BM5p6uosbZMQvjTwL+n/LMSYojhx8sRy
	 gCgi0UjQ6lzRFFReQjrqbJqjpDFLnlwb7Ib4615FZ4Wqzfwh5lpOSHxR8X/18e11QO
	 4snhq23znV1yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB71FC61CE3
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178756983369.7876.7680763489660567384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dedd17f42008851711f64042a0b85acd2374763e404a5e44a3a60156eded42b
Date: Mon, 24 Aug 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787569833
