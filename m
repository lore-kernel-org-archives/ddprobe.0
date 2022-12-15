Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06A10568B
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 16:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F363C433D2
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 16:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671123087;
	bh=sRHTohg+FpNZbq5rzbBTiv2gvV2VGvikWN/3LAArkJY=;
	h=To:Subject:From:Date:From;
	b=m93fUxNeXfHr1o/xdpa7WQ5AMSAb9M84dO+IBJzHz03ISzP48WfPLAHnqf0jXVxVo
	 AMvaza5VWCUggWRosFqbfi3iHqelf/DrB66z9sGOFYcpcM7fvE4M6dF/qDCB9fOZIV
	 GJFFsed+Lr9ocewvptu/PJZZpgJAhHBw5LUEsE/F6LaH1jbX94pEpxf3ziGnp2JF7E
	 SxciTkEO/FmHm+/qJ8iVUBwWrs9eYH+b50Qsx+Ttaesppsb14dxzp1CIXOz2dKmR+9
	 ndYkwWsu0sZIHsHwQLMgdKziUiv2e0U+wuvuFvqazQrgOAaTHprertKVFt99e5pEqx
	 Mrc94u5kCktcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70A3EC4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 16:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167112308741.9372.17570376053453870413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4db729171b40a3b398564f77ebf02871225be712472377e8ff22b8827635bd1
Date: Thu, 15 Dec 2022 16:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671123087
