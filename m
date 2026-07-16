Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21EAD1F0995
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 08:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784189914; cv=none; b=X4Kd79q5thuk/DAM4vIgfh+YxqYAT0NFipC2YI0aahX2Xix1Cq4fXTUdkLBsCZneWgqcCdMeAzN5x9ojHQ/SxOh3SFnWmXyc7/y+if/xdJeDbQQkDn3ktiwgICdMe8zB9OJOG/RyMOl9vnsA6j+htfJFVcPpJbXNSSwRd2I2IMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784189914; c=relaxed/simple;
	bh=UgPPMW/ZIO+3I7rWD/mQg9klaX41/5M9OEGXLmRCIn4=;
	h=To:Subject:From:Message-Id:Date; b=GZCbBrFxBbIAOH8aFTev925rAVfOx48WK72SqgUk8+b3tOkG4VkV4B8Hj6IEnUh3Uc/etXJloLQoD9aycZqH2ECzPo2Y/HwE39Cq9UfnFSVZADNGlNiU1EsNP7fNXPKmimBBOSwp3z1rXUmyfNJ8EU7RDuoL0plfMO685+xA4V4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n/UuI9En; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n/UuI9En"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAA3DC19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 08:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784189913;
	bh=UgPPMW/ZIO+3I7rWD/mQg9klaX41/5M9OEGXLmRCIn4=;
	h=To:Subject:From:Date:From;
	b=n/UuI9EnHupylD80jkwjnalAflMu3HqArFOpdcHhuuAQV7K62M9w+cP/5nbt+CXW/
	 VFa4IbirafSrl4kY61CFxhptL4Q8Ie6px2dafmo1NVxpK1X44rht5yyo8PRVXDVoxp
	 Mw/1+v1UNwOOjRP4pwH06fSDGUeaFnB7Ot8XOfFRrIn2Gv//aCGmge9E6nXhLmoxw4
	 3MZrJ17LGyhWTcT3vNLAzULHOi/5RjlFJjpFZTWHwMWd2CXTyr/6InhobD/mxsFtPj
	 bkPmhI9EZpIztD0Uy/RBTfuK6EKTBM1crjX0bAvqqimK6pzixc1KDijw/NxnScGdPB
	 zd/PBR1Qgc+rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A929EC4450A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 08:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178418991368.6065.8355902917919466309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a876b1523a2e17458c3d51fd99e607e12134e05bb98feb55cc5293211c0f081
Date: Thu, 16 Jul 2026 08:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784189913
