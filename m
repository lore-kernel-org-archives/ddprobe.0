Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4078419A
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 04:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E261DC433D2
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 04:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681015265;
	bh=iMDz+oXhQjSbREWoBJ2SjY2NF/0ffXTjWZdtplNITII=;
	h=To:Subject:From:Date:From;
	b=oUMiXFOsXpkEI82JLGg2weoPtEP+jU8/5R+xl05ET0pYg52bOkRTvbvss0sGFjGKa
	 0ZGfx852DisAPIREUFQcf91Wy7Rybp5t2YM00JEfQK343k1qSShCc1ZGea/Hhwb3RJ
	 YpXp1fhZ1SO293O7Ju85urkVplFZBxmuQnxRycPTy/NZu3BebuFFn0yXxS4S2TmBsc
	 kmCeZMI4NP2531preL5LplOBcfMAqXurgZXdka+5qHJklaK5G1BATaOaQXjNRQ7taD
	 1/YwBJoDX/jLD7KGFZguadICUyqLy2m27ss/Tel4tHFIn/4FUakiQnvmEgqZF05GSy
	 zfjUCGctToLPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1AA2C77B61
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 04:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168101526578.3532.11381689964218084267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 386f19a9a905682c4733a324527b701610711eaacb9092c80a24c792a033a53f
Date: Sun, 09 Apr 2023 04:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681015265
