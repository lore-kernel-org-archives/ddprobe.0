Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FCE537A
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 04:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9559C433D2
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 04:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682827565;
	bh=xL1KaOGX0lWoWhhHRdVTRe8CErppOffTwbAAEx6xrhM=;
	h=To:Subject:From:Date:From;
	b=KI50Svl98VHdkLPg9P11j8NGZSabDHpd7DxMQ9fNB11Z/cjv8dqzJ20Iy+cX+ZE/i
	 9HhifuyUCoksLDYC5l1t+6R7rd0zpbp+mxq4Cp+W+t1+KGc7JsNAsViNy3F7s85tGR
	 Iy5cJRHtMo5i5w06RtPcsg9nheLlCEAtXbgBXhdVmv7E1dfHjYLmKHd8rgRDy/DQKW
	 yiNBx9SnOt4Jabs8eFBpRP9R9AGUISa9mkveCEe5tL5j+hlOBaosHMn/7V4oEBw7NO
	 chMHeRLoUKWKlqsfRFlZs7J3NkzjNv04+etJd1cnfkHApwtXI3LtE5HRfAmjMydu6d
	 PNEkVQDjQainA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1CD0C77B60
	for <ddprobe@lists.linux.dev>; Sun, 30 Apr 2023 04:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168282756576.9432.15759939657667280683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41b28b3cfee7fb983a7e52deeb4f58ffbfcd48b765ba2818ab69336de4544f0f
Date: Sun, 30 Apr 2023 04:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682827565
