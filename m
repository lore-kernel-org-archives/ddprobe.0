Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DBA32909
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 12:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3DCF8C433EF
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 12:33:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682685186;
	bh=akOHDM1BAMepQXaslt1RuER2J2qqtYY4tnUuq3mLVIU=;
	h=To:Subject:From:Date:From;
	b=WWezfe/axlEIsCR/OqYhOlPMDOjpZ04FoJXJzfoxk9dJSFGbZCjIlFLPOGv2NPSte
	 CoBxwIJShC7uIiWuqpYcbr/ww0bh8BoQKuCABsimvl/HajmYNrEo30pjFKMBLlK22O
	 iraqtx16UmYDqPVYufv2r4/R0tBksxuEbLOVME/gM7+z2Xvni6m3cYmffKW2ndJ/ex
	 c04t7vsm7y1oSGBQ2DgNxIDHNz1v6ooUERxN1Ko2SE7o5wUJezTtF5npspCJ2p8uJW
	 gQlxAgfYlO2e6Egq4zifOTJoHi4N3i0jYF/Ge200rtdzyK8M3uR132GtuTRM1b/n3V
	 YYmTLig8Bshzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 14F47C77B61
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 12:33:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168268518602.31456.5554345155334024099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e172b0eb6153c846e04a0be63f1b9cec0556207b956ac29678f47a693cb4a550
Date: Fri, 28 Apr 2023 12:33:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682685186
