Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE8C91107
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 03:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E596C433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 03:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670728887;
	bh=pdKRZPiuEq8kSSJLIjkCoTvhdoDpZS7oqZ4ljJpGxvQ=;
	h=To:Subject:From:Date:From;
	b=mv/HLNzcZqFBhJPBCBIrBn6WIqAbZ0MR+COMkvufFbmCgl63L+MDnOyzxX349WxJP
	 5uI8ErBykGzD/julOvtM9JOeNx7WzHAacAxxLPGMvDKttc5IcKB7JHFiO6L7AnM1XV
	 JcwDC39FKNBdyI0wtH45reXXeJK57VW+pndNSr2cKuHEbkMPS0PqoHriU0l5XodTVB
	 lDvE6JVNkIMRWiQwPhfO4WRCqg/TYqCC2uy+HeGJGcbArJ1CdHN2KM6+CW7qkT4E9B
	 Xk9mH9pwgvcAYFimnkIhVlgdLAItLTN7aMNOB7qiKXq+9USMapo2F69E6S+c/JeAwO
	 hp99ztMMc+wow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64D07C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 03:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167072888740.31756.14864892824976626345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c051081c66a2e3977addc03d69095ce3fe1e0487ee32c6ffabbc22db94a3d0ba
Date: Sun, 11 Dec 2022 03:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670728887
