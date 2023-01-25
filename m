Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39EF64C7B
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 16:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D432EC433D2
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 16:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674663185;
	bh=fdJzaOwd/WUjxNSTBLIstXmk2Iz8aEnV3/1kjSfWwCs=;
	h=To:Subject:From:Date:From;
	b=KdVGTXy/TE9tqjOzLFDaZKuvAc3jbhm2aRJ3+mW4wNynN9vZCV9wl2gbm5vLZtSQ2
	 0x5n9pXDtLZsDdFefR5h0OPY+tPD8GeNtXfVK+RB4z4SCIk4nR7ROGvgf+7pnT2UoP
	 O4+ruUQNvLRLClvNVbaLtPRfXNJ7uzFSw//QpkaPpOwinENqBqMJSc/jzUnDfo2r1G
	 Tg4uszuRwlP8W5uq7eUjtY6SX+2zsKPwxnL4a6PfblqOnqKl4KEXYxOUFKmTMxOt8W
	 +sCFBI2yyba2S2fARXagOJCSYQoMnTbi8Ee3PZh8U0PFb7CFhp2JckRbPaeGZpkEKe
	 3joiTEQy6UmZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B933DC27C76
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 16:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167466318575.25527.10664141649051484144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5aa54c1259f13dd7bed8021c0555fa27c9f399a587e481cfb3107234b18c2a86
Date: Wed, 25 Jan 2023 16:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674663185
