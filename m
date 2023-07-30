Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD4451364
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 07:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0DE0CC43391
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 07:42:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690702929;
	bh=ro5ZDfA3WpEI5nn3rCVadHokdMFPU5TDJ8t5Rh+QG70=;
	h=To:Subject:From:Date:From;
	b=q3e4r/flsiatHz4HS5wVlwx7WQCzSJYVIpX6jCK4W0XEWlB5OZ2M+UfLkn2pctNd4
	 RLf5TyyutGvGJTN0L1YzCkr9P9x9EdMZS79L1pjxsjrBubDOZhwvEWNAp8+2H/eTBh
	 rkf3uG3G7kng24YEpcn+S3HZcU874jRp80Aax6+nk4X+Uj6rbl+6R0jdjCuGs+8FMy
	 B1PJbcNdS2oV1Z4E0Ni0Y9M2UnQJdaWtxlLJPERKX0SyP5UVf5pkujocz0YWH3yCYv
	 OZTTMgTSNY3Ya+Fo4VmFtvIAKNB+MFUPW9+tKYTyCW0/vTsZesDcMlwcGsYPqvCAXH
	 KylsHi8E6hC+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDC90EB64DD
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 07:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169070292875.8519.5067596662358803763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4825277418071108e6a53d8601b8441a433a4eb2512426c09cc5123865fdd79d
Date: Sun, 30 Jul 2023 07:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690702928
