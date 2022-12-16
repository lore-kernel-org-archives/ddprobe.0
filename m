Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C96C4366
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 02:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ED36C433D2
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 02:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671157887;
	bh=2yYMfTouo4iAauJ09y64XAAD/T4zQ+pw3oPeZw5tlhI=;
	h=To:Subject:From:Date:From;
	b=eDut1FDBHhFct+bSSoMvhZyQuET0nUqWCgWmJG5Y6X4GJlEZm6VKFUYAbBA86+lBj
	 hAOeo65f39nJPO0RuVxhUixoKdzZm8FbjGA0ZN49mggoSUj+oNQU+b0wiDEjabL1Yf
	 QaG6XYUXR5T5Le8A/Zutze6PRLe0UF3t69K9PnWpNpHK4khDDwJ2kUU479wX7L0LQP
	 vfRbvBziKwUe43neDvPGouMv/zwFEYXs87Dxu60AhQZhaK/g9Fr+yz00VwS0LZSItd
	 ng/xV9aXogLAe15IcWUBzoFcWmdQDw72SVPHV0kPZb4ZEkEhJ+tV4SnUEjDM0yt5xx
	 m4yEozld6ROuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60772C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 02:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167115788738.5134.12506486222431769959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2eaec4c5359d5b0e5e87811f243c0c1e8154ee53011ac933927ed91e2140d9ef
Date: Fri, 16 Dec 2022 02:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671157887
