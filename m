Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5FF5364
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 20:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70F34C433C1
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 20:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665001853;
	bh=sMdNVfJK84KnChCm3ZRZ7OihhxgC6BYIQIC765CHKRE=;
	h=To:Subject:From:Date:From;
	b=Z1M8lLuTUZcPCLs7v29qsKOEDsc6VydNYyb/q48HyyhIoXPGiKHVvWABSNoKsLmTV
	 CXl+ONqq3Oe09k38FuCBLTJqZQ1SUnoRaLy2Pth4dTWl+hd6KFKViF5Ej8kTN49fDl
	 74Jn+oetI90iQRDexjZwIYwRbAa3SNjYN7QgOwikUDrmWjcCFj2FN4Wm5ja5Fpx/JP
	 BO3pKrC+Xp5ajywHhin+m0mH+za50IyYQh2S/SP3OKzN9ma8nwj6Y9JJBsviXynCpZ
	 Np6Qcwvg/V4HfBjeUkcuEyx1k9WyV4rwShDqGXoIadZk+WPlP+hVEGcBrJxO3ojad7
	 T0tbTsFsk9nUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54F28C433FE
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 20:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166500185334.15289.16947151499542061651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c525b274a07199279d3c393c27f8097b8706f501cd93b3dee88414729368671c
Date: Wed, 05 Oct 2022 20:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665001853
