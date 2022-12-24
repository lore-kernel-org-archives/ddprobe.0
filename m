Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D86BA3D61
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 20:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82209C433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 20:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671912687;
	bh=/zeWxOKBw5i2hgLDelbzClbW4h5qQFkAmt7ypfBhBc8=;
	h=To:Subject:From:Date:From;
	b=ekWY4AMrsr4Fd9cw8iUWx2bkDrlc8C2/hYHNaWgAWf3iBvks4P7rtaNikC8RWXC7p
	 TQ2uIskpECD0Inb7OLcxCROx2c0OW6thyInK8ei8jiuk+aYCRijtQQCDgVpbGlLbdj
	 KZhqaZSvO0idU4g3Dg3EJL/V3FsU2wuiBzu1gxPCTxsUlkRsR+JC/El24T1pgho0NQ
	 PLXcfHdIvP0FjS3wYPqc+BvW8L/SFClrM3+DLtNTB+k+5Ar6a5u6KF3BcQpM8yNXVa
	 XNFNIa2t25TDKeKvBYR6PMEtatE//1tcZkc4KXaBMFRF5eZwSgUOAZTEoN5gZCIxiT
	 FKq0glNaTShjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 639B8C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 20:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167191268740.4876.515283173052697425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 050de0824069e2fb7c57ab6090106a21ac24a8bb4d50d7aa2cf77ec4c31c04a9
Date: Sat, 24 Dec 2022 20:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671912687
