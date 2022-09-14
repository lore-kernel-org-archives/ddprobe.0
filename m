Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C74C715A3
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 00:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77E44C433D6
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 00:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663114253;
	bh=Hq6N0wTYo8N1WcUPxNK35UddWXPwFkXO47V4pOP2nQc=;
	h=To:Subject:From:Date:From;
	b=pEdzduk0O/RHu6i6vgSH+Cw/ohl9GsklmU4+YapZMOXaLHpazIk31l/g1EW6v5z8T
	 spUN1gzsoa4nL01YBFpAkWcE72r9Qn3KciAOQDbFJ4woWBdLbCLl7BJVsusbOOLExH
	 /Idl3WaFc1zcr9W7yB4qZLVZUpjbLE7U8xKtYDboHL8oMljNKpLjHGOt0dWfJAdITt
	 ByQWHOJLImmHYGGNCGVdVi/6iLGWOq86OPB9gXdV1cZo6i/Hjsa24Z4Q9BJUdtB44U
	 tS71QLXGoeuHjmPHAIeJZnBl6ZHQKM3U75sSlPK+p55o/xisbJ/NX1o+EXTbkYVF/p
	 ZbN5ItqtAqqvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D2B2ECAAD8
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 00:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166311425335.32155.4815177252383670930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 320f9aa550505a9d6b24767ac4fb652a59646fc7bd1b6268b5b1d14e282ebe28
Date: Wed, 14 Sep 2022 00:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663114253
