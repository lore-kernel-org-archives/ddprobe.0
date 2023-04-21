Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FE9D17EF
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 06:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E240BC433D2
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 06:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682059685;
	bh=vCPVpckxnst9BizLzBWOSATBVFMe/UnOzTZ0Oxq7QK0=;
	h=To:Subject:From:Date:From;
	b=jSGXRH6YXrf2m5qZeQB+TZfI7EaSzyDCbgFpuhy9AIIV4UpzDeDX82DNbnIJbpWFT
	 vA4WKbtlbttafEljdA8JUvKG2/LzSMbEoZ98pqR7OCZfNZZGdsr4GBng5vFXe2jTPj
	 u4SzC5mawdiODQEDiht6tkVEcyBEoiWZJpVTFNAgAlVNwt0btyA+BJlPUy7IYZoJGW
	 D00xFkkWFL6Np2EgSu8EqvExenTpvWa/TOtTK0L7wyhiDGk4oSosQaIxedhvLelvsW
	 UoLEpg+0G9lTkA8x38l07DDRl+uDD6jMreBHnjC/YcguevPKHeCp9iTManP7v6hmwx
	 u1I1F5/zaOFXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C182FC7EE21
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 06:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168205968578.9433.3771053221604464858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7677e6adbb1069847feb726d104f7a2aa912cfa66426296fada2ec19303ce5fd
Date: Fri, 21 Apr 2023 06:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682059685
