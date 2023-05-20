Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48812632
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 04:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 09697C433EF
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 04:18:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684556286;
	bh=ZDMuiNr+Ua3fVceBGwt5thIgrBrFHUe30xbsHyxq88k=;
	h=To:Subject:From:Date:From;
	b=Shb2is4rhPH6wubLGcr9o8QGXCELDTwUBoBhIwrl5hKFfBF9ZhtA72FOQPP9sfDlc
	 Jmm9PyBZDQSXd/LGLd/aiUDkrKYYEMfzUHjgwFpct+8gwKveA5YO14rPvgdVlho5G/
	 WdLZb+FaTAWjwA1sUziJzCkvPwO1H7/4vY1HpHYX6b6PRaO75eKoZRIdE/aDVtw0eV
	 N/WkKiY3y77GOxs+qZ62l7BpsIPGHjKxSdvwngtAukTxYe0Cc+thNqjaP/aJkg94bd
	 tsyqOVg2Ha32iYEJXzo5L7IbFSR8S1JEcez4xKq5gjzt1hYdWx3QxZAfllMiFuBFze
	 dsSGFtjk2esYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA287C77B7D
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 04:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168455628588.27351.10515987848004258820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c76fef0574379ff9c75cecac8b90256fb33888a93fe8c330fb134c3254d5556
Date: Sat, 20 May 2023 04:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684556285
