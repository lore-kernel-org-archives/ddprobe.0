Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA446FD7
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 21:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE442C433EF
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 21:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682114346;
	bh=L6D566GmdYwOkBpPx7etk1YuAiOlVFIrRQ/R/98PzjA=;
	h=To:Subject:From:Date:From;
	b=mgYExNY9Jj1WLtyrxJDP4UvegzGSxp+mvPnvZNSfWBL77Gr/9NW79koK2DyeTP8ZO
	 yuydvGDAJiOvKwCUfoWbHBujQIS6TZHqg0aT14nTv7eI0+ub3RZepolxxXPonF6fTI
	 vWhmNhCkFubFLWN4gm4SrloyuFrG08WHbGl3iAeGtt54kQZF+zWJmMUuCs/zuQQmXs
	 UCtHN4HHWBic81FmqpQiseaZR8aEMSnwfw1Fpt/XOmHJdGjlqdfU/hRBLvkZVxvvWa
	 usyOfoJDuxyP7gCOJBYSsE/p9eOsx5mm7leT5r8IzaBAlCNfHkne8ke8k9DrbutPlQ
	 oVMRW7ygppEZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB29EC7618E
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 21:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168211434580.24721.5447927504566126720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e378aacaa8c1ee9d4cd3dab4d5d36fca70ac146d7e0587cfb1e3359b1ba9570
Date: Fri, 21 Apr 2023 21:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682114345
