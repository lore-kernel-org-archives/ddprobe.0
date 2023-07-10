Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 715B7179
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 00:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1DA7C433C8
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 00:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688948228;
	bh=MVXFmpIf+M0RAATodAee0tOS5drkh5Y4C4kxFkdWCcc=;
	h=To:Subject:From:Date:From;
	b=PIeX+LYTAB0sa4vmE+e/tMv80t90G6JkWjkbi5tAd1IyV7b4RDwUoe5MBPTiku3wZ
	 npSwQxiZDWiQBf+kBighZBcFs/VrD6MfFeAnVbAUzYHaMzmVIQlPoCV8yuocbbVeDF
	 +bp45NSZmoKiJhYvFIdlYK4dGE5bqR8bdww07svWhCP+l88lS9w5jbAeEVBh8yeXls
	 Gi4zVHk14JsogDSkdsJImp1R8vK1Aeiqib0GmBjlz06gCo0B7iIB6DKK5ipu4yzh0U
	 F2X4SzXipaN02vTOGLDw4q1MFn+JLFRdscGJT8vTPjs5yEu2nR5iRahlpWkYsyEj+D
	 oNG2FzVByDyGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BED94EB64DC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 00:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168894822877.19178.12200456443219646999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 147c89c96d0892604f0eccf81c053dad1d82cf5a17c02a92729cbb2507e65f34
Date: Mon, 10 Jul 2023 00:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688948228
