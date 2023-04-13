Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482E1BA32
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 19:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1F9EC433EF
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 19:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681414746;
	bh=hn0+94DXjiMKuS33Ez2cnoDZHMEhzsrgCXsmnxE7Ogs=;
	h=To:Subject:From:Date:From;
	b=ZMdV6y1xDO/lN5tHyyp5XJFK7aG3Ra589xQ9jRinmeacL8ikjmIaX9ZzxH3v90w1X
	 mmVJ80Uc12QFNfrLYUCzp82rff+36jXS48ua6l5AW4qnbpFusC5bvNYix5GV3+XcZ/
	 zXPopzg+NH7GVGvLvHeD/K8eKWt9Lnjotl8I5897vKsoT1H8KiXZCtfy8vj4KT0hXX
	 jQwxidgvll+NFGpNG5/hC60+LqlXFU5W9fZtX8NvU5esg5T2X6EM0CSpoCGTH79xyR
	 uWWj56wl6K7PL36iomQhysd9pNvjc0BZ38qdCgE2lAmxIDOktE3i8dq4aBLajxXT+C
	 DzYxNYUqdghlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3BBFC77B61
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 19:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168141474583.17868.3137680758023595088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 047c402b04327f3617b978b3f28e0edbdc8f3aa64b445f8dd65ee46e18913ae0
Date: Thu, 13 Apr 2023 19:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681414745
