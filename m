Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B77F42591
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 13:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B793C433D6
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 13:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665322853;
	bh=XjWC/3WXCjvCXiZYB3LcsUFV8+y80r7uFuyDK5YcUKo=;
	h=To:Subject:From:Date:From;
	b=bDrYQ3CRGs+/MyOUwtD2E+eHaQdk1r07crs/Qg3q9/+XWT3/gmD99S4JmTflgYyY2
	 aoKUqCKL6yjwv/RzzTYzQ1eginl5IqiPRqDEjRmBbIgCj/NyEr8ux7BOx1Dh9R5tNP
	 hoYvNQ0CSQPV9hxPt+zjOiWUhm8F1T3UA+eElUVZGI/NLSXKyhJChjOwpnrVF8BdRN
	 //28Q95CVEJlGrftcwjWQmERQGKKZwTMqPyyA8Ae40H9D+Wwmdwwcrln63j+EvQOBh
	 JTzJe1uvFBIC+fWc3ftoc8ZQ0ZsDTNOJfLVAiutwtTr84C2hdI1pTcqJ+VfUpocwQ0
	 VM7HoDlC/XpNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F5A3C433FE
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 13:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166532285331.22672.1629211913645462760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d165adaf2f6cf03b269da198b99adde64d490a439ed9bd628201bf08629c9a6a
Date: Sun, 09 Oct 2022 13:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665322853
