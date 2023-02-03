Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37468BA3F
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 21:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1805C433EF
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 21:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675459565;
	bh=jVhOP6MioOWn6sYyGK4i/3OOW/FpS7c7ooo5GzghlFI=;
	h=To:Subject:From:Date:From;
	b=iql7gZrWtpO0xQtxiT4p5YKqF1G33RgK82YGezlGcCbxSKjJMrs1M8aS6UhIfbiZE
	 rAR/zec7PPR950UfcyobrobUkNqHtpPV7yCh9fZzwSPh4XLeICpYys1JGKMSFvFtxy
	 JssA2y1uhHH5ghPTO9yES7ZIzYl4jSZYTq/lO5PUdn++1pvTZs38yxGyRgmAiTOc5G
	 EQIBUNr3ymzwXFkdo/TlHmRG7eeH+pvLReXVRMrjqlS2ZCp9AsdTBc9ito2ZaSXQgD
	 JW1tPg23dW5iwrIqlhiwskS8+DSki2pbNoP9dJhXbYfWCmj+Tsa0aovqQFuUmslZjc
	 8Q5Y+F5s22D4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5AD2C05027
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 21:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167545956580.6229.11650890531615939572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a44cc05cb9a3910557b17233f1262e65590542c075afd3666dfa6fcb35d1adb
Date: Fri, 03 Feb 2023 21:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675459565
