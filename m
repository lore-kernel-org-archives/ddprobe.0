Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B258A632
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 02:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6813BC433C1
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665111053;
	bh=rdgrJ0ldB4hpJyxW2U95cptK3TfDZ6G9pKxSTGMDGWY=;
	h=To:Subject:From:Date:From;
	b=C+TWOF9weU0pan4DFQ2zgStLeEof9YW4pw+gjf12IMGsIrbDo6a3Cnogj2QxSrU08
	 s6BoIbIYHVxiap4MMrjg3BZ2WR68dQ+cxc5bCWwA05M2vLiBR2HOeHP+CP77yJWDfE
	 C+64e0Pr2C6CNIsJHr+apqxqJI7iXJTu3WPA+qyXbOUahtwerhaNSMCiQCbYKXtKEp
	 ez2QxtDetd/3OzRsh60VbrpgCancN0GrV4NaN8cLHm2lEo7FoFBsBnI7bjVH8OtvHP
	 JPFce3kUE7qqvKV+NqwBb+taT+yvuzqIwnbcqvETrpI5K2mEUjmMI7aie8oY5o+tnF
	 WDCg9vy2F4+TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51B05C433FE
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 02:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166511105332.22942.6076192093797972173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30937e3764d1963069a2ea24feff016e549fca8bb0eaa8ff4a6016690fe0e4e7
Date: Fri, 07 Oct 2022 02:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665111053
