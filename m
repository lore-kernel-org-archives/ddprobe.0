Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1A8F138F
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 14:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69835C433C1
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 14:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665930053;
	bh=vCo61PStaZrWEujxeWBqbI/xDNOTzLslwzQhVXu5QCg=;
	h=To:Subject:From:Date:From;
	b=ScS+YbP1AR2mjStN3Hnq6XyXDZIjbiUNHJQxwa3l/VEehCVnF3H/+nuTg89J3i47C
	 ZE97qsc584pVumVRKRDBVQV6O9NkunsI+Xvc/GCJobXxvsM54r5RczTYby/OYeWbgN
	 /Xtk3BpHTMjsX5afBB1B6BxA3sWVMm57HOd12IGcMLIigIsTVptK4e8xIQV7TUFX3R
	 3M85vZ3GT43OeoAnrArqejJfvWxHniTD3N/SEtqGZ6xIcdl17BIseGHOs4dy9VBe5x
	 e04A1LXYeH4pRefEIF7sQCJrEtd9zOML8sKN58UjHSD75FWHcEwm4rZkH/2/czakkp
	 Dh2fRseaLzCzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 511E9C433FE
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 14:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166593005332.23625.1742828287966439105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92da2814c0fc8af0de8edd0e8f15c7b94afd73adcf65e1b9a0f4ef20d4af8c05
Date: Sun, 16 Oct 2022 14:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665930053
