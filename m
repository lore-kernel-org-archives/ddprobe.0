Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB9AC1FCB
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 14:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77EDAC433B3
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 14:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670770287;
	bh=pDtcEDiw/XxI4s4RbhfFxUPrt1ewPHHiMSlUQiwVnZM=;
	h=To:Subject:From:Date:From;
	b=Zv4o4vgHXVtRnSZYZHMBlCbiZ/qhfxmVoVqapqAC2plwyxuhWzFfr6gN69KeQzYDK
	 5UBqc3dF73cnczK10ZvmJNeEVsnReKv+Yx5SaU+GRktgKzlXvdr9JPN18JNaoq0dAx
	 4AZ3WJHVvXLhZMzTh9zKPPRAX3Ze2FvD+He1Ld3h2v1Zz7/Z9qAWanMw0HzK2YHAkW
	 0e7ZXmqQZu86jXAj/0yZ8C8dgJHzM+Av6s9O5kiXL2/eSo84yKMlIgxUNuPlzYvJ28
	 YjDciIyTCshPzspR3/HI7BcIf3ifGscxP0lTXhxwUXe3nkEw0iUwUlfoV+btWZeC+p
	 bu9Gs4WbKupPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F88FC4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 14:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167077028738.5529.2764360388366012886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36795eb43233cdaa71eac191bae9060cb67e9c78977b2fb438aa63ee902d7756
Date: Sun, 11 Dec 2022 14:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670770287
