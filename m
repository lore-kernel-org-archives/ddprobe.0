Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDFFC8BF4
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 15:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3D86CC433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 15:32:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686497526;
	bh=WVTDHdOf1CONfB6qh48XfYWmycZPuaP3zg+/uhvTVhU=;
	h=To:Subject:From:Date:From;
	b=Wl3eitPUOYsbhkR/QoqmabInJpGwydvC73boRnmxZ5AzagV//qeeFcypGSyFNLKmU
	 uIbWyFPRl+9NuWPTnrWmBZn3olBY9nXcJD672sZ0ExQmVTj+2hrmWJyOOHuSY7y7FF
	 xgup8IVD5rsf2WR1eHlNU0o8U8lc+qErwaQNjA20hBfwLvmvEC75FgVPjCUIL6sFik
	 6kd/hrTREn7Q1WqoM/uXMscXiqtezCgHMPc9Wvga5G4G5ugKqCpgKQSNTDUv3oVyx3
	 pAwLnNufmmHc770uJD91dMbIhvxE07WnlFe4ge6yfi2+0QMg+IyDP1ssuGRtKrbrow
	 OIjIB1O4ekWxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 13C9EC7EE2E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 15:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168649752595.577.5880005046576625029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8553999dba6a18b763f4e88a14f5ba987c097674f845ff12bc5a93df078f4ede
Date: Sun, 11 Jun 2023 15:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686497525
