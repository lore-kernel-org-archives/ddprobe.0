Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2E65EB8
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 05:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E506C433EF
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 05:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672206687;
	bh=ZoWieo/3OjlwhTbmdmAPdTmgCajh0u0YyY/1/xM389U=;
	h=To:Subject:From:Date:From;
	b=Oc5V6CYaA8qISPVigE8yZFlztfcDUy6ghYm4a2FdkQDCbOIzlPW8rBUpVQGooap/y
	 6P2lCpFjTKbv71SKrX/gA6YAWHPfJEiG1aGtul2+eHwT1cAX9grxJHQpN0JYB4N9mA
	 vhVe5+FVjPIyQgVNX6JOrwu0ZXHqKyBqSwXMNW5tee5/mYEZf9kts25IMxjGEIh0ia
	 PjRBJUZ9zv5J0rbZlfW9aWQ+DOGrfVv4/RzfMHEc9G4b38ALm21ftRZpr9r3oZbAfe
	 l5/pY6HvJG8fxbbHgIn8B2tu4Kgu54yqgGe93r97urRfW1fg/zVCE30ZuN5B4IxtNB
	 biXmM+FqzXm2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62DB8C4167B
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 05:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167220668737.12065.11586454862103178023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27163196229705579654f39cdf877560a48ebdd01cae961ca76b62bf99e369c1
Date: Wed, 28 Dec 2022 05:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672206687
