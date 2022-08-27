Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D176229AD
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 20:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7075DC433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 20:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661633452;
	bh=fAfZnpBKt/WOvr6oPQ7G9K4UY4yjRKDq2da3VQzj24Q=;
	h=To:Subject:From:Date:From;
	b=q33b8koKygdHsWUtXis877Uja9lg8/V09lmu8GV+8dP7ETyAPKy+019I0pB99MQ2m
	 uqpOs7xXk/6b/F+PZCrTwVM5RZN//+Cd5LBTLYJmpJPSXULogdZF4ai/LKJr72ldBY
	 oEk0jkGLVHtH3JMA3JlodMCLw35SlWQBCT/t+2eig4BdGVGgka6s47TDUcg0fTYwUt
	 ZAmbGUMk/D5wXQdUQxGblafxbnBmplJO4NeT2FEEijGs6uGz5pgqLF0xj81l5nRpxz
	 PG8DNPEI0j2ruOt4xAifK2G3+Wiudnm5iYGlFKu4JIXr7w39EYc5VBbJYgU0gyUYVy
	 lYnUXF/Kr9zSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59295ECAAD1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 20:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166163345235.4545.2559920784910802875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58ae953ad3536683e86ccb68e3c92793a76ee39f376ec3281e15a14342e7b8a1
Date: Sat, 27 Aug 2022 20:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661633452
