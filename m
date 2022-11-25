Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B04C017C6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 06:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D7EDC433C1
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 06:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669356654;
	bh=AzQAI/c0b55b2vJgHtj66nJQkUI2krdAQEhZkg2Kczg=;
	h=To:Subject:From:Date:From;
	b=iGTdvcCBkFZ9FZbQPyrklpyhSuMwApcBoTiOtlmY0W+ZkuJSjInmr3iZ2LMKU+0mH
	 Hame1HJwXiBSsd+xPWnUv/UyvGoACHB4/ZRLywhdVqABGn31tfjuUcIR7V44/kEQRZ
	 p8ExjthM1+Kl7F02mwa5LUiBqkG/0tW18igKbDSf6O3ZtQcXX4tWE1ueM6UmbqiMer
	 ELGi7nfMMcNdBL0rJF9hJ++a386Q2CJFxEvCQ0dgIn3fgNuD25MlhzqbjoV6Ue6lU2
	 03xn7sh22LVfwXeKEkbr3zGxq14DC8P3riBpyXn++Dgn4h++2W8xmkUWOFYLeM9xdr
	 LBMyZ61YuwuGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51F52C433FE
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 06:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166935665432.22243.16060160122012232836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a2e876c7e8d413f8480a081973b0d83d2cc51731db838172f4690b6f97054cd
Date: Fri, 25 Nov 2022 06:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669356654
