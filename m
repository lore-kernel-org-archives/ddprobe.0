Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40CBC1846
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 12:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E387AC4339C
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 12:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679230505;
	bh=cG3NVpcxwBzQA434H37X3qXo5SYq8uPurgUPPktu810=;
	h=To:Subject:From:Date:From;
	b=bbih0MsKQoR44q87iAuajs8HbNfiR99mXPYTxaXkkoTG6koJjKBEIuXlPLp/E1jbf
	 Kc5BviHCDJQnhGg85gLzFHsB6DAzLMZZKw40uGrr1u436jz8Fz1obsD77m/dLZZglG
	 tmeYp5jHLbbKk9Fmx2/Cr0+hTuJwSY2DmBOqItBd1MKpYYSet9dfakzMeE+sPTZX9P
	 v9uufuF9ea8lkeX4zaMFMrPj2zwycOI5IfWNu4QBueW/+pFEtXN14OZK0aDZEF58IB
	 z1xun5rcM9s88fXWneWRwJvBDB94rbo3DeXzAI1wqxJXUstj/AvpooEVfribbiXsql
	 TRcbU3tIrP0vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3387C6FD1F
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 12:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167923050574.26955.3473856184090765882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c3362182dd2edf90656ebd537fddde1055fa7b76a9641f568f903a7cbf5a98b
Date: Sun, 19 Mar 2023 12:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679230505
