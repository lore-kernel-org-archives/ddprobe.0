Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B65518EA7
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 22:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OJaw+wRQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D9E9C433C7
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 22:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702679296;
	bh=UByyvAcDyrvaJPMA3tSs7rs1CDkDuDfOWvYLdstHXzM=;
	h=To:Subject:From:Date:From;
	b=OJaw+wRQO5C704vu36E5Gwxkm+nTtcHKVkp4Dqdgz7G9HccXfZhTLTpSIFB5ROTj7
	 kdAhjfStd8uJBM7BTzdRYT2Uiuyf2hg/zNSHLckJ0/NVWxpPHoI4iF96Q6dCuUpjli
	 HtkUc2XpxJtmQqE67X8oO/5HZj5SltKYbt2/aTPkp/x0f6TZxVR9POhpOSlMKpr3Po
	 /8wobZZ877+5dlovtM82OdsD4/effJyJZ+UYlNKZDHwDAW4RUNqu1oq2Sb7xV0EF6K
	 2fRlkTRenF03tKOasTLh5FHVv3bctV+lU1TrlfZByE+BdvLE6cAqCWhcCb6nA3yxKP
	 i7IgrYOtc1+Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60C9CC35274
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 22:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170267929637.14696.9402561170529818087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ca5914c2c98af6f34b2ef55d5451f84dc0d854e453d20ea9ec9130d2a512933
Date: Fri, 15 Dec 2023 22:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702679296
