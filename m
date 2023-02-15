Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410B43C39
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 10:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4227C433D2
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 10:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676456825;
	bh=yISruLwgSM+OUn17TavSj3u2P7ijUnmb8JbGg4MgEhM=;
	h=To:Subject:From:Date:From;
	b=CgTfgf6GH7SyLE3v07HMU+8rsdSw+7Pq7TUUVFGLFyiuTKAD1piRpnkPncUb3iTQd
	 f+63WxpYY34mlUgrZtCFY8tkOsLTRnxJ1NLq4Iao8B29B+Le+AZCoTy+La+9DAH9f7
	 FmerLb0W65Etad2B2cWYBwHQKlYA4qIjP17oxbr+3O0iLTvsuxkOmDFN2eqQm+FobV
	 Dhc02asE7h+MLLOZfnuGr2sP1SC0P74zkt300i+2BfwD+Rj1tYVQ4H0Zd53H3i0qES
	 s5/VpAU2Zd7MQdsuQ54f1Y82owjAqgc66CLLsvEGx8risn4z863WD3opI1SNYV+acs
	 tRenZPCIq31tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2AC9C636CC
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 10:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167645682578.21613.13911338661044630243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d35020f41ca8cef23c01f01ef21fc2a624464d4f3e793e3ce8ab209f354e228
Date: Wed, 15 Feb 2023 10:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676456825
