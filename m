Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385EB613A
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 20:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1E7CC433D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 20:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674245525;
	bh=Mjk+3LwrldGZMQJunGldRGJZWp0eyoKAH1aU/4YinjI=;
	h=To:Subject:From:Date:From;
	b=ewj4UdsgDsD6xvTpchn4/HzQ3iBlHz0scYOfyIx9n6KDYXiDkU52khL2WQPR7xg3d
	 oPZUghHDungd5JMyYuwKZQ3E4Qd5KIHJmDYWUw9btNfR2/k9xG8z2dEGOdMPuVHGQC
	 495oTInaXtQ42jYXPuBexBzkliloTjGLGvBEA3qAyoHPlAZ5e2DNl4CJ/5AXOgfhe3
	 9xnNV+qxQ9stsfsG9Ac3ly7mLEKI3ucOjfwNiMAXTH5fR9KvzErlUQfBq/XCP9glIU
	 VKfiBpKn3BwOgT30BzM5KSr7/pKEb4Zsvvhc6ZVHIaReFfNQdNRE5Ij7xLi3WOVAAA
	 1g6lvj2uGMhFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB9BBC25B50
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 20:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167424552576.15891.5760843395732083147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91b9cc0298195b6817dbfa58730fc0836d7dab8f1159699b9703f1cf978ab5e5
Date: Fri, 20 Jan 2023 20:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674245525
