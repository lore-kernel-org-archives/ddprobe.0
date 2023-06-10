Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 921377EA
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 00:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 025EDC433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 00:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686356286;
	bh=S12eCAmorUdcCDebWdBBKENB2VS+Ze8XNzHYystd86g=;
	h=To:Subject:From:Date:From;
	b=CObNvYRicgFPlHNHs2axc05hTG0fu3/drPQWzK3kfmNU/Whrar/TIOp4DZYfORQCW
	 FVFIV7TvDI4rWzIYmv08QMfuY8m677bk4z4SjVJ0sJoVp2MGF0fLauUTYI1km+lnQ5
	 R/PyiPZi++mZ5hG9im6AptLGWBKbRdWd8U0x5adWOuk1b6mGz9nADKR2ss5Ad3TP8n
	 MxXOoOziJGRk+PKG41y/r8//qEDCtA4kIFA938rQM7VbFYWKr6Z6yIkBtPyeDXjXL7
	 hhiTNPUCa3454WIICn1Uf0SKEnSNLzW/vb3EqobedoZtS+28zHaDorqGpuVj4pJOs4
	 N+4/20Py20/7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB7A4C7EE25
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 00:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168635628579.16592.9091241112217105279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cb4e96f5deddc8f03862ae3f6b6f8b29f23a0970d3ef1f3d830b6d76914d36f
Date: Sat, 10 Jun 2023 00:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686356285
