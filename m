Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76CE628E3
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 23:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1FD6C433C8
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 23:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688947028;
	bh=wIpChqMoC42ZrkfUZCjZnff0v8eDfhDbS3b+KCzbgbo=;
	h=To:Subject:From:Date:From;
	b=VhsglXryKiWhXfqvt0k1ghJs8fjXcua2G9WS1s9drZR7tRSQIsQVA0NDZM+vP1PKO
	 K6mGlzeL7r47KtWCiHM0P2AN93fZ4sJDK7v1ookmcr3XX6SX1h4/vKB6tIi/cPV4Gl
	 LFnX5HsrgQ0GSoCVQB4Cog5q1Heu1nDjis50IRjicC+QuYy1v5PEE6SC3x3SGUsmAc
	 9CGYwR5Jgzj3YhdzFq+cTqKtDmPk6m94teRoGRJFKV/EXMYFBz6lbJnWTym9Jlgkpw
	 4S1AkwxDE2mx7375n1LdZuoPFx/ROzxkj/YAwJGBnyUwpKbBSFv+1/sngK5dnhxMH/
	 k3d/cbfc3WR3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2C0DEB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 23:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168894702872.14969.7315261266996291320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee4f9686717b9198a578259a476799120e4be5321a101f645bd3baa1ef80a5d4
Date: Sun, 09 Jul 2023 23:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688947028
