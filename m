Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E7B6110
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 10:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE8BC433C8
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 10:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686738428;
	bh=S6Ml4cMdkzSAbHxHJI+UUL5V2SVAuqorWnLwRl/5FWo=;
	h=To:Subject:From:Date:From;
	b=ItzLvFAbL+L/ctoC48kkQexjU9Yqe6v8S+PaAFD42Es0q9EaUEihCiLmptUrXpIru
	 rfk4izqsMyEv0qRChzKYKMaSZp1+PwJFM9FF6eR1umhq1GOwBeyDKmdow6MN4HIM4g
	 XxViXfg1qz8fTMKbJymrIl8mpsaTRMtrmMP0pWeyQbU7DdUjco3CVeHivfHW6KjJ+Y
	 Wp24j8kU2Jnd1Kk3R7xix78wQYcBH2tB+zfW5pFYyl0Xt7nDRTxtIRWyAqAyiR77yE
	 gwXuvPzvQfm+hxBFS/Up0UGDBB7Hqfn8HWoGZ/M47BSifF/SjBLor2oMhM3wS7VnlX
	 rmHInvcDy9WKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2B2EB64DA
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 10:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168673842869.12129.6037771058897827901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b320eabe602e034b5635df70795f1ac52eb3a6495803a824be18220a7f4275ae
Date: Wed, 14 Jun 2023 10:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686738428
