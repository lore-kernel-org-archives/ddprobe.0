Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C527D657
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 07:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74C93C433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 07:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668930654;
	bh=hJntETE1P5CF008WlbXWOH09mx33AO/upcNp77TB1rY=;
	h=To:Subject:From:Date:From;
	b=K/i3n/8rSCbbA59v6k6X3kZiD9tm1mDuqj+YhCiXxiBke/w15iXkRasIBDwfiFpim
	 OWXo+dA1n+mtkKCQiQXz7I6bKX0i8qd9wMeQmfiXlF681d2atk+Z0qDrNZk8dTqyWC
	 bUBe38q1FH22J9HCCLeFT0dkGBqIxYJuHs7+9qIc5xb868GHBs+dsBULl2OxTOyEFk
	 PiDde4/f9PBCyvxTi3JyX/ROnxkDpAEFTyAf7IHRKP3LvPppAqtT83HMQkHb0uGBAA
	 8Khu/Wn9Cil1T3oRwOHP8HRN+ieNy8ablGzGUOrVbxa0FUoCZ2RQRL17ixBMrbu9d6
	 yDoamWppkKDhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5256CC4332F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 07:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166893065433.24034.291558590719278762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cf4a7c7f0544d0210940b40332364d3b6ed718075f80fd796b14ae9c44df9d0
Date: Sun, 20 Nov 2022 07:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668930654
