Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C83A91FBB
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 15:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77B82C433D6
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 15:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665846053;
	bh=2Hl82eReSNstPuuImcYAuZrENXTYhpdvvwAlDSNph4U=;
	h=To:Subject:From:Date:From;
	b=CMHaCWsjUK5ag885qk9jWUTfqVrpge601fbGw5DucP0u67we1YdSwzq1G9mDoVWIc
	 xzk7grIVqVDasV9vU98/3MxPOIiwI3odMtG9pE3o+aLVLXYQBvHQthRID77bE2vvgh
	 AsQjAhvkYezDstdLiJ3K73DY24Awgnl2RPjEnnquIWYcRxRgYhhL9FNbqiXvAwZyeT
	 vZO9/0vKG5YeEcv7GtA9Fwzs53JgRGk5+j28Z93arMCZaMUvkxh/6H9eP2dhpyNDhy
	 JzprAn7p2RDSdORyNPHSKkxRgQVQeiwYifkgxAEL60sVUJ2Vl7EHVi3E9VsKO9ec+L
	 DtOUDQDAhQG8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 556DCC433FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 15:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166584605333.22690.5264317957281237006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a080652f3e5cc0a0fcad4a6949bb98743c9072df9298f52bbd27e748a3990cf
Date: Sat, 15 Oct 2022 15:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665846053
