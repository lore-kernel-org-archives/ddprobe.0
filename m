Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7D217B
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 21:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E873C433D2
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 21:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673905287;
	bh=exPAWVD18UNixP2fzw/BTO9FPtiRHinFbbmoHjcOsqk=;
	h=To:Subject:From:Date:From;
	b=l5RwYfQFOmekXxrkazrpU6BQiCczhMl1dfPNgauRlHL6ZOsEVtOr7kl0OC/ii+SvV
	 1lwJIEftRrBwJXPRq2CBiYveM2rxsj+XoNG4K1pkM0sn6tZEMneI0LxzgIudZRcgTJ
	 PuIqjCJc4/lotsOwo8sAurzCDmzXBRMlhuaepq2nPWJvlKsUZuiHJzHEhc59H28SLx
	 vhfjDEaZDMi5bO+rvnbnGsi3lHzWj53DKnnhM/LdSwNEiLt8P6Yrr5MkeUYVBDsc6l
	 zzAqC2czNormzumERfxktfLWEdgJlAq0B78ii26Ywpp00HlTd5NVF6iX63oErNY2To
	 lAFKVb/NTcFKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67960C54EBE
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 21:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167390528741.2477.9806839390755213912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7909aabdf52546d248cd89fb3fddf891efd9ecaff1c51efa98713646226acfa
Date: Mon, 16 Jan 2023 21:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673905287
