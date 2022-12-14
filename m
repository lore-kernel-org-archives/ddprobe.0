Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D33A78470
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 14:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82B6EC433D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 14:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671027687;
	bh=8S/b6U038bIM8yLhkmOesPCCj7hyLT/69iV6NgkoyR8=;
	h=To:Subject:From:Date:From;
	b=DTue/WISUth5i/zrs6L5H76Ta2fnOkNQpIBi9Za37hOwNwESC4odZf5lEDYl5emjI
	 dnsmiufS9D43itTVqV2nLd0PAK98VxMCnwdOAGzOH0cu0P+U1s/3CKPrfL8BJPcYxV
	 nO9wESGYygMuzBkEt2n1/GTt6ceWrsAuVAXfg1JDCyjhCZr2Kx/UFeanzoitREtVX0
	 yBQ3xIb5d/eJgX0efKWFYELFDEJleYXfHKhLzufvUOAUEydP5CffrWpjr9mVo1XPh/
	 YIZWzssP/pqsYvAyj5uZ2HBlcBW2p2McKp+gvps80JmYkLU3U7SJImfE8DjrF4Bt/J
	 dCSJ0U4kShQ5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 670E2C4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 14:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167102768741.26485.10292610158015739657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a92852ddfdfb088166eaa2ae9953aa647a29359707cbb29c27fa0282302f93f
Date: Wed, 14 Dec 2022 14:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671027687
