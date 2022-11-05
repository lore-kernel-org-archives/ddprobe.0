Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D450A79CF
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 03:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ED8BC433C1
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 03:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667619654;
	bh=Z8l0qag64buQzjTBjeD/bX+9/ymMKjshpV7yqZtRq+Y=;
	h=To:Subject:From:Date:From;
	b=eSPfyd/XhERcFTjemNaaF7uowAluCY2dFbyWbCds1uVlGisxn/dhoOh5NuM8CW1+g
	 crB29sKg28jWjnoRQUUupJLmxagiDGppvmajQ3Ki9DW1t3THECcok4oSYVAaPsoSCs
	 pL+OsG+iMgJyHE2QUMV4cNoeHR2CowwEMqi0otYKBVPBwTPQrKp551bF0I6RWhkGRK
	 QNxkK2Zcuzb0y0GBM01scNxBTxQ1TBTvqHgzbu2ouDLjG8kuhiWk7MoecFp1cWiTnx
	 EYvIBMvOOtGbOnwwKyRVka+U/b1LVrdJm5ik9+XsiJiVAzAUIZqcyTM+Jj+wqAKbPH
	 9yTjhEFaenMSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 528EDC433FE
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 03:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166761965433.515.14046276875975240674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 675f82fdc54f38b56e62e3b9adbdf49145fac3dbdbe8dc6979c709de6a47ecff
Date: Sat, 05 Nov 2022 03:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667619654
