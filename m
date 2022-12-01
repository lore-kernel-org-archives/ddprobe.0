Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA482185C
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 12:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6662DC433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 12:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669896654;
	bh=GMGGSpcv/YCXjCrf0wn2d7aDXqXigT+hyxtm1jegpTQ=;
	h=To:Subject:From:Date:From;
	b=rvUZT8DZ23wfxHtpKskyfofXYNm0WOBHQmYRbIH8UP1zwUkohSTvp1xIA45Z/sqG+
	 3iOWznlPN9cfq/MI3oUbCjobXmswDeA44LFsQRrAyl1CFoWzrBkDaaOp+NO1o6Gq94
	 rqkpcswADwBl4qxNh5sl8rBPA/mlk/c/tJIoh3RuTIfYgEfKovIcRTglRQiJna/xuG
	 nJQl2hF2OFRjzQSQL4XIOkjOcGuG5pkqnVsziRx0PqhPd1MYdfSa4yojZU4kkRXhkJ
	 2KXfpbM4gDxCIljtWrlSx8ni9dS0V+SsUWcMrMNRSRO0CC/gflT/8yfqOpUcAliCHZ
	 yaCPOP0vujd4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50387C43217
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 12:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166989665432.15431.14105890958690008223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b33c6125f2b9f1553cf9e63f0d500e23e223ccdb34752e642e76cd30fb2b70d0
Date: Thu, 01 Dec 2022 12:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669896654
