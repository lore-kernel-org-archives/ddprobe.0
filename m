Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3CCC6106
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 09:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FAE3C433EF
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 09:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671788487;
	bh=aGWj5U0lE5Yw5IYhuvFEFtpScJ95hOloROE3ZYLBp5Q=;
	h=To:Subject:From:Date:From;
	b=fZXPsnOSnnOpUAlc2IYav2/uRtZ5Ce+foJbfL4iVGXhN1Ejngri0Zbzm3+WWX64y5
	 o6IlO+3hSZktBTkyO9R+BSrLreok9C4y8TAh9ekYII+OBkew+o8Vgp2/3o+cyaJqar
	 WCU2Ev3ToZxcOVQfhEKA+17WgE3fZ46MjbE6+EfT6wUSDyG4G4xHKWuMC3Mj+Rnqdl
	 32BpEAukLxE2pBd6i0Svw9kf+7cUjtzdb26h/ig4BazIBEm6TS2fHEq++W8uYSV45L
	 7JN/aAPSWrAuPKCMA8/M+m+LkWDGKKbomKep4FqAgvXWqe5gCZqeHBynCjvdAAgOgK
	 WSgu3Yh4cZdgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 673FFC4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 09:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167178848741.16688.2988375995016741180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61308dfdf3612f1834b77ff30750101d007c5af48840aa251e017a8a4f3ac911
Date: Fri, 23 Dec 2022 09:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671788487
