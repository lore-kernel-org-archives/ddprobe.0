Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50F301F5EE
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 16:16:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0841C433C8
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 16:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695831368;
	bh=xwUlQh0wAIq8zJoGXyduIjIIIXeP83304oXHA+vHNwA=;
	h=To:Subject:From:Date:From;
	b=HFt0ZbjDSWFBV34IslMMB5Bc7iFkOg6IWQyBuEWEoeq1fhL48IJ3/7+mJa6+ACeCy
	 isU1RQ3Zy+foUzphsDxBH11zB+NAl/YRtozKFiyxuh6Ga5TlEjkT3wmyQ29KSunLBy
	 hZqOBlylU5DRYKRymNAtynxz7yGYqMCYP0cPnNl0GwLOdMdNxJBV8vsuhGQSWpJzPV
	 NC0nd/qzl4rPPaKx1YHuBA43ZFtslxKiO7+gEMDWCoJUweeMYo3Bh/3swQjnd/rQp9
	 U76RBdYyVh66szZnUkcqqMcgdhr0dd6pJX99SN89HRV2V1S8/Ulyfesc89335QT7K8
	 02sYo5d26HjnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A501AE82CAF
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 16:16:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169583136866.5173.8748992495325069493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c24da0119afb12c0ab3151744244c085ece3ad8ae6f9673574f9d22ac247f30f
Date: Wed, 27 Sep 2023 16:16:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695831368
