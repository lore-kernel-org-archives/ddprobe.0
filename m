Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6FE47C
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 02:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BE20C433D6
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 02:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668565854;
	bh=36o4uDFGaoOZd4Fl4Cb5zs3VBwHCZLOOKSOk/qP9mU0=;
	h=To:Subject:From:Date:From;
	b=RmT8PmndjWGUzDa6R5ryq/C7qR9AzGdhUd2AL+21tgZE2tRmw0fbOdW1aQ27OFkQD
	 c4ztWKhJU2NoQ2LiJN4dil5OUgYbY3Lb38o2131RKvqgneOYEH4GfCTUdgoWXJx3eD
	 LWIGrUgCfgKz58h/0jt+AkvsXyEs7NBZDNc2zHeMhmvVDH+N0AA4wAAnpnrGcecFV/
	 VBe6hwYvxuVz1dJluj0deXdJmwBCZT/nzAupKzYdJnvDuF9t3i70k+5uDS1tf5aCan
	 +031ZIOZ0WZ1Y9cF0d8JhtD7aFopb1Biur1paKPBm7kIsL4f2hB9VzIU4o4ryTJlhx
	 zCEIoIaQpO41Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F2A0C4332F
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 02:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166856585431.16787.5312816761349887879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c8fa0c8b6914d907ed92c14aa7c0cbb6ec163908cdec3a59935de076d78e511
Date: Wed, 16 Nov 2022 02:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668565854
