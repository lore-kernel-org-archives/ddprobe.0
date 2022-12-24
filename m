Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04A2628E3
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 11:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B8CAC433EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 11:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671881487;
	bh=VWrXdo5f8rp6Wubc0BVmUEuXhGCUdGRilsl6yhYJSxU=;
	h=To:Subject:From:Date:From;
	b=AbojpsKKWKTziyV/bEvd+dxuvUVXffu2lVQ/ShRlEydJokQpZjGi1u9UemqJ+VBgX
	 FGDmMwBzUOfZG87ekpiyB3aZgvEbOARNeahHTBe72xTq4t4s28pIirgD4/jvr3pqKH
	 OblB0HINqGqGxASDDhZBIQmhAI8Rm/HZ5TJNmCTMgkOwL4hY6Fa17MmGZkDeV2SkxS
	 pvx+vDwMsC62h4Q2rQ/fhka6Ob7oiuC3h+zsMXkLD1Bx5h6oy5GEQE3ovKFxEtvrtv
	 DoNMVlcOpT7rMnh7h0FIMNh+w4OsNyCr+7KhXaMkbpeqFkWNiImHqIdN3RFlIsKsOq
	 +lKh4TYVB5ycg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D928C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 11:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167188148741.2620.9391042457498079831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 714ab62c6cf4175fc4f768b22516160451f81e85d50f32a988b2910b9878960c
Date: Sat, 24 Dec 2022 11:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671881487
