Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9448D6AA4
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 00:00:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3B68AC433EF
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 00:00:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685318406;
	bh=IqCcxVayJYbIjXGZbZ1QV7hrk6fKJBBQ3DZkjealHyg=;
	h=To:Subject:From:Date:From;
	b=LGE0NfhMb84wuA4xjnw8I9TAyaqSTiIz913ASR4KLvga9UUxKkJzaak93+absEE/i
	 S89FGQTho+azu05r7+nJCqmPbrQuzVTOrQZ2IQCLUeLLuFvnTLAMYlbw15NYYmCiDp
	 KjwK+TNZ70IfXHnDq140G9GZUiXzC1nyAJ0qWTVeZXKHExpwF6psy7Mz3vRm59qNFT
	 pCrEtjabAWdduneV06XtwYptq0qsKgh4GMgIJaYr0pSVQwj8j7KuS+z5cavUsCHcBJ
	 fWFxhkEkDfjwrGyGGv+RYu0OKU7s/6/v0Ay5IamsHfvb/fWtOQohF1hRupyVUv+y6q
	 YSku6a4IVEolA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 100D3C7EE23
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 00:00:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168531840604.24137.2676494788031462795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 164b50a9be87251bfc8765b509d91054528f849eb18b635da67ccd80ffc4403a
Date: Mon, 29 May 2023 00:00:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685318406
