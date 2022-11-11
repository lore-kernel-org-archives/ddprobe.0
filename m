Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C22F21EA00
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 14:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72468C433D6
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 14:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668178254;
	bh=7YTRZPS7z3bysg1Q/nwxTZ4LDZdQKLL6PAZqpepyl8M=;
	h=To:Subject:From:Date:From;
	b=hVG5RJopEQwceSj6pkKDoVcgDQUa8dD7KiFUVYAQpOVcbJGTRjixnXDyGEsVy5vRG
	 58PFSoBy4HQm4pLQQT5GOFMrj31UCUhgjmuURIvk1YMcCb63kt9pLxc4+z8qjVfa94
	 wIMibSBLNVanKtvqWC30yIryrtX3xg/wGugcI1Mfb0dgasxFQSbXfIcp0Pel+eq8GN
	 O00W8hswcXqgHDu80aAHWLA06uFo4Sf0rfm2E7Xthzcs/QTFiHak2F08gt1+mlZHUv
	 Ue7Jm0wbNwiPDwmkM+vRwgJ27IZIRlNcVsEV3PqmKqfqSOoMTU7qFSKriUjyQ5pTqL
	 /5kCLaoUZ3apw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AA9AC433FE
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 14:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166817825436.5936.14895994899937473726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd92d5130fe3818ba4a3a4c081c81b3e82d19b61f2883e14f62c6ba71ad05083
Date: Fri, 11 Nov 2022 14:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668178254
