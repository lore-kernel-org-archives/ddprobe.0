Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C16EA7E
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 03:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7381DC433D6
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 03:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664249453;
	bh=8zJVJrCZI3ttXE/fAbbJWWbJcNcboZ6Fz79iVzRntAY=;
	h=To:Subject:From:Date:From;
	b=sRh50ZoPaF6sMcP5iW+pznwPPYmbWNASnvk9/+UFlo5nPweajnIWecIJg2jfm0yzG
	 pIXv02P70TSfAn8+r8jUwwjJ92S7ui7lMuFG02miSPIlYyV2qyNRn+WBh5NOpoJhn1
	 JBwW6Vn9HFKJvqbh4RwvhHtfd4hbzFNNDIxfuq37G77PM3GICYOCh1F7IOLzQ+xnDl
	 gHLpfo4YswwrLuKwpVcFsRzz3IMuzhrpKn0PD+saahfSiZmBxS3T72T94fJDaR/sMa
	 oSE6CWuHwfF4xXx9N6fqEahbRg8Lzs083DhyX+rElB3nRkPjZULJl6VvvsWnebAH1e
	 Kue/8ZwQ1ua/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52398C07E9D
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 03:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166424945332.19114.16646390318305783593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f985dda548b085d63f46b92502efcd8b42367b9f228f001feb06beaf8e3b075
Date: Tue, 27 Sep 2022 03:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664249453
