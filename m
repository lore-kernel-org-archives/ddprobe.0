Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7176F10E1
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 06:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D19B8C433C7
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 06:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692512648;
	bh=NKqARzQq06aI7294ajGxDp2ZOr4XKDVqD03BZ31hsvg=;
	h=To:Subject:From:Date:From;
	b=paW4kijLi3Mok4dx8z4yABVIjPIbkUdtby27H8PsPovRyAo4AZ+lFiMMSD7WKlh2T
	 s18y+3rbpBDOtEsHZdFHWTaEt3cLUgH/H6yr3hKEq0KjTRieZ50BpG8FX5Ql0rXeUG
	 JZYxrAu3Dr/gDDQp+LBK2PzUrinanXTNFqhSZOIRPBNc1Gb0MRV0nGUSYclGvx6uE4
	 On3bI3Q4mOeI+zB9dG0nlCxI1QzjtT1HqLpuu+YQxWrVU3lyFo0B/m9bjyAKGwy3Db
	 QsDMllpBRprI/ySNEYi8J/V0IgpnOXQWfvU/faVuJChdkq+JpALF19TUwSaqHASlva
	 qwsM+YgjOv7KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3B4EE49A4
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 06:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169251264867.6413.1241921513543477213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 019896f476041459078c8e8de268837715e35d0923802c52d5a7d00f66c55526
Date: Sun, 20 Aug 2023 06:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692512648
