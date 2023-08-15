Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F8D9BE71
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 08:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C15FAC433C7
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 08:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692089588;
	bh=XnBFKMSzRZqvCOZiNp2TI2HzVT2tmqtExOT2frRoX9k=;
	h=To:Subject:From:Date:From;
	b=U1DfXc40w5QfQJvwoWCZCFz0e6cinLiBwJ15BXcsKDDfcQAfRvjeDtago0XsnFiJK
	 QpWT04fJl0IrthCeGn5l/pjmUAPYS8orD80ye7TDiWw5AWKaQQjAoX4SwCCqqpOfjD
	 wbQksDg9vp2KBDnFt6xzCB7QNWd/IXJLF8Uc72WpCiZHTvigmWp0cLhJwdY4zdsgDa
	 QXXwlen3pJ41+zMDVq9mTjZx7uld0iLVHC6mxFCno2pu9YK975Op57jUzq7KNWB6nV
	 e0/uTIR+30E5xecB4a2LtguZfxc83nNd3h6rn0VGQVC1rccEAG40LVK2p1LOCwdt4Z
	 0cj5I6/UxsSzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6546C001B0
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 08:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169208958867.25599.3889879990897788847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2635b03af334063386d675053fdc2c3f1a29eb03d58aa0297ad04dbf808dece4
Date: Tue, 15 Aug 2023 08:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692089588
