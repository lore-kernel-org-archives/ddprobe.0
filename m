Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24CF025D1FD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742804394; cv=none; b=SiZ1TydcC7RlCsWx1IbIpCfJh95vCX+gAnXGtLumVm6N9H2oh8La1yXOdWnryK/Q2wpeNQmIfCB44mY/5dNyCwSIZ9BFTpMrdyOhXlHsMDIbIFxavXa/oewN/uWp2esyX6jHZe4F9597f5L1gEOA+ztJ/r0mIYpu1w665QieNNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742804394; c=relaxed/simple;
	bh=JFtnwFMCN48JC1ZcqrxTDwOJIN9Jcr9eFbdRLYq+dJo=;
	h=To:Subject:From:Message-Id:Date; b=ilC54a7gN7sv4ChsNVe9DA6MxBgsdkToZvLl/apvrma/LLlkzXa37qSn/T5IIph+FmU3l5fRbqz1G619a/hrE1F7GxZg+XCEhZXc8nw1G+DPbQCWClEPqIg/IM9hfTZzvSz9dEriQ6Wd2xIn3i4A74wmubDRmAkzOsEEfN9H2IY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qJbcfKGf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qJbcfKGf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA185C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742804393;
	bh=JFtnwFMCN48JC1ZcqrxTDwOJIN9Jcr9eFbdRLYq+dJo=;
	h=To:Subject:From:Date:From;
	b=qJbcfKGfdMxGI7Ams3eS8mtMGOF+T6BuOuYxXeGF561U9eNallACSkE7QOwYb8yrD
	 HuTIAbHVt5MiBYf7j4R8eCOvrjXycb9vin7K3VDesvuTaqYWlz5h4YMqg60HN502XQ
	 oPjQeV1TKd+DdQpOp8p/xII3BD2m5gFqZ758S4dBCwJhT0DGk8LCnC8Vksec100efx
	 sV6lWngFfgpUUZ+cFk/2/IVSO67ZkPjcXpuA6Qym9JivWm+2dxl3zsKSK3pw0oYWii
	 zMM1Qt0yOyzILIhv3g/iSXiYVVuZG24ngEu8OOWaFq4LC1u2fJXibUBH80C2HT1BOw
	 87YzP7cy9zCEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FE6DC36008
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174280439364.2987.18186092849890253330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3098d3bab807646976bc0764a3b8f97037c0a4cb6a867865cd859749306ce5e7
Date: Mon, 24 Mar 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742804393
