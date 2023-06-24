Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68FCA7FC
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 05:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D405BC433C8
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 05:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687585988;
	bh=gZt4hMO5C+kttnBVt9hrb+7soHEmwegUzaRcE3DV14M=;
	h=To:Subject:From:Date:From;
	b=YVKGZ5vc+bLxsXgdfvD7MPTEUJos868mZgup4z7HaLvYVSZvrjV6uRnZF85e6Lx64
	 rFc+Ce4kxZwscppqfFeh2qUFcUkQesAZkon4Vhy7qaSXxInVRVw6bU81GRR3e6AB6M
	 7U/RTMGLbjVVwLVcw0RaUXMb1gb8N0SgmldWSfuhYGRpWcZagnuQfOJ1sGg35nNkj7
	 hrn9PC90SM9kaW0sS8TyQPupzEJPyR0DmKDPDEu/ouDJWjIegeLWKV9p0j2g8hhddi
	 yL5hzUk7kivWudBHiZ/Xhq0d92szfFtdXSIQ/bXFpy351w6X3kpoSmZ1fgDBrCOTMi
	 Zj6U5I25osDVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4BBEEB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 05:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168758598870.24084.14039688306205831779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb35054e566e321427ed2b9c4c19d10e12ceace42202ac190a5ee5e4093a919e
Date: Sat, 24 Jun 2023 05:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687585988
