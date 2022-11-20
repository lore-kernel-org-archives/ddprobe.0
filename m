Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9EEE62B
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 03:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69894C433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 03:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668915654;
	bh=UsGtRLtkQidWTZY9GdFZmYIxoT2YVS30JMflKdq1bcY=;
	h=To:Subject:From:Date:From;
	b=pXkEcfxELVMy6uk4noxRv1U3DG7yKz+lQklNuyajFJ1hn4q95ZQeubueH+onOjp2V
	 7vYxnjqMtKhELkhxFljjzcJ16g22TyN8y7obPRXPUyYen4Vd+C+xoiBaGRCTH4TYPZ
	 2rwoun8KSI1xL3InfaI5nqGPq2KWQYox5MgcYvAtv34R8UuU+AX28xWjREkP3uu3qh
	 Gix8eAb/7tORzhOowE23UaSk0GiGxB4IwLPxlSilgV+t/0DjshkwuGbrbP9JyVcbpp
	 LbyQ7vBYnwtkeM/CQQIOgVKVpxm4bys9XGdwjgCvHv+WhVpwvRon39vkIXJzl4vFTj
	 ox48hBLO7rT/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50153C433FE
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 03:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166891565432.22423.9293094781958649175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93ac47b07dfc6a33b69caf98d5d9a6d348cbf814aef12960eb9ab0bd5b95d782
Date: Sun, 20 Nov 2022 03:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668915654
