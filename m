Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479CA389
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 03:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6EF7C433EF
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 03:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685158685;
	bh=IvJiGx97fk+DyuMnfZl/Q6MwXzZIko4iY4fBmQwfQSI=;
	h=To:Subject:From:Date:From;
	b=DWlgufMHqv8SLhURhKnp0SnAf3eaLGZCt8DpF7SrcB7+1aD2U/1p7nEP0E5t8cg0B
	 OYZWx8zpX6jkgUsvP3d3SNyBiROfnX8y7ddDfSmGZVEHfMYd8nbtI7nZucgo4DSwJv
	 ZCJyIt2rEIqTCGiXNpvThxajAsz8d4C/oS66ThatqT4BplavXkNrOLLeyqKuaJQ9+8
	 Pt1Nm1PGbag1X8BNfM2KWybZUUetScWGxk4D2lIv0BiXZ0DPuyIhdAS9udNjNguUUH
	 c+vIIJrPEwocep+sCjm7rBV3MZd2wFsOj8Z+Nfr7HFz22wneC+JBdj3fRsMgQIkIRj
	 qbHKcS1vxfxPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2D62C77B7E
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 03:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168515868576.21959.5814606191975971631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fc74f94e0628aa8c1d4dfa345eeaa5ce19b77f7a99739db6c65d0e6b6f64867
Date: Sat, 27 May 2023 03:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685158685
