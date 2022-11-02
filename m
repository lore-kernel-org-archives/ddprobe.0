Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9A0B7461
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 19:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ED8BC433D6
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 19:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667416854;
	bh=iKfFNLv/+hNP+5jXgHOf95UYclS7/3Xb3shNt/1Xxes=;
	h=To:Subject:From:Date:From;
	b=lsqYM/ay/oQMxXUnkEk9IrNaCp3FHWVswpZZsRzxu6ZrVxm0FFpYEuM3xWt+N3Ub5
	 uY44ooB6/KSyxMvAzKKAE1y5YoGRcEOKm0L7w7E9SdnR3wOQtSi1+yzqdYylJ0PQ0O
	 V7Jwif9NuCtYn6UGSnSNw1b3feupZ5LzH1wE4OI5OuobWTmqlRLHiIodODvqtI0IUY
	 mggazIKpzfKRmpiWF+4sV40obc4PiEMeay26C9D3BNvI6k+nYugKBjG3aWUeOt7eKo
	 TKAPqJoApTMFjKxYAwuBCJmeRYmkMrrLY4kNSAwCsEDM6QW+N7XlEHk/zjenvk1uQ+
	 Ub4UkTFltkmCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C46BC433FE
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 19:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166741685436.29740.16829936768773137456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad9969bd79d16d5ad3fe6472bd7415f0ebfadd7f19d9d13c38e8bba08467ecca
Date: Wed, 02 Nov 2022 19:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667416854
