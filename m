Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A47A2904
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 13:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D58A1C433EF
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 13:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682602865;
	bh=4ZeWtR4HpHozDEOIv99M01t0kwtkM10uqmp+j3GTtic=;
	h=To:Subject:From:Date:From;
	b=iXRa+OfQ2u4uQJDog5ZjLkLZSKWBZIBSa4hhlwOiiYZmw7/Vq+aAgPIW6pCOOqwxZ
	 dbzWdvPG4bLCp90dVdBnUslb02zzANF7m3nXYtgatcjpwV0q+myE14E2YaYRTIKk2A
	 RjXkh25KlsOSPQReU+ZNUSA0rriCUV2fADGoB7obYGoxvUC+CVU841+wigC1mUvwYQ
	 VzANntrFenbm2o+cgeO4hozB37vkogx6GwJx6CwDmvn4e2d03rQkJoVCbBdktocYhg
	 o7e6f34YpOcaAFBU/3CeYcQiCDl9zrgLoHJADv0tP0b0x1NAQEhs0UmtAF7MZcUQmD
	 6jiaJWM1ceKjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC12DC77B61
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 13:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168260286576.5117.13647623431605913401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6675851d0fd2b1c6785f22960daa6a898e34e07ae0822e1c701dabde539607c4
Date: Thu, 27 Apr 2023 13:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682602865
