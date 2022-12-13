Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9F6123A3
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 08:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C8C6C433F0
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 08:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670919687;
	bh=FJM3DpXww2do63QIBEv9EYPn+XVcAH47Rh3A79b+WyA=;
	h=To:Subject:From:Date:From;
	b=PHEo8a3MxIYG9m3Ahp4OdohrsZ3tuw93bV/WBwN1J/V7xySf74iQOGPnoRMHAKT0V
	 aCyr1cdEu3v0cvuTdFMwEbclBmhZTiJ1JiMLisejrBV9eMWSXPlpkT6FZOMzSu/Tjn
	 wv/4Mnn//sq8/5f6FLGK656KJf0z/pLnlTZbyKwq65gK/FWnqZFUt08ITD8KgY34Xq
	 RcFC97xUsYRD/pM+B0FPLcERnGYL/lomCbfITaOBrcIqd6gdNZd6LLxforiSEffRpG
	 1+P9Y6gCCm/eudNRMnoU/bXrR1EKiUMwMpMHdigUqU1m+VpberdgTDdac0gxRKF8DI
	 mjo0OHbcj/dtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6659CC4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 08:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167091968741.13312.17817628629496183827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e00fe65a645de9d8667ea49cf41c4714ea1b1266de745f34caa8783c4ee36dac
Date: Tue, 13 Dec 2022 08:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670919687
