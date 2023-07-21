Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 056D31E53A
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 14:12:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBB81C433C8
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 14:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689948728;
	bh=Hhdi8InAZQXfJLUCw9TBtISXjY7U0GR5/Aj9j/ufuoM=;
	h=To:Subject:From:Date:From;
	b=BAtJbX42czo5Jw+2+VRvxH9mwwtCCiuw8F/2pfgETbZeSib0aOs+Xtyu/tvzFYP4o
	 WbDUsnkcVj7NmnWChQLvg/f9hEngV6pn2FK3ec4ukJyggH7fCmpghVxzPM8yIinmWU
	 EOOr8Dp8kyptrHKCmnyr+i9QHYKigqb+Y3POgxfkKtOk5VhoPv0MpsOtRyNd5YWbvt
	 UMVs3Q4iUyl0PzfRQTmJd4GOHoMzaZSVKpEbFmNCJHuhKgtcz6cpKSZRELUzRdtvcY
	 Z6nR798x4gG4XIjpeIyThZaP2bMzV7P5aQDM9XxyXJwPuj/ixTERrJM0uYOkYNMg4g
	 RzgALbxrLJkcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFEEBEB64DD
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 14:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168994872871.16759.4808820183952973291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8206c2a74e0dc65d8d15255acec59f3328520033c0c0130a4b13b142f295c384
Date: Fri, 21 Jul 2023 14:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689948728
