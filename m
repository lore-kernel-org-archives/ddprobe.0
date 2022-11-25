Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B99968474
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 20:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74214C433D6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 20:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669409454;
	bh=Kyg+8+MaE0r/CnW4hd4iwYu2y+a4Rdi2SCh35akgtW8=;
	h=To:Subject:From:Date:From;
	b=BWngO+9tKI74RMIjb1GHiKrboKjFTNCN+nARdM9b+sCUNO0aohQNf+AUgXD7FjX1F
	 24o4E7N043ZSFP54mYXh+da/dfXWJhbOmZYh8nlk3rU1lh7RkEjKMng++83gqgqZyk
	 Iunwh+B/+esfTHN8vdrCuucDEcoUrqaVA9WHH33ffdpcD8N1KOYNSPUGXSZjLYumzY
	 o6Izdv3TvWbkCZrm7ub4/7ngjV4O8yt9T6BQiGSvW84VwiEOtlNPVUvSSWKc81T29l
	 hdAIFcyobWeemEGK7XOpflqmVxrV7GgASHIKN9dCeRnwXDOtTm6O/1rjZXkq1Agwv1
	 aJfCrPiC7r1Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B692C4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 20:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166940945436.16204.10943675396456895895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf91a53a2daed6388ccb98702cf32a4dc9c02495da776119d0575fb0ebfd2242
Date: Fri, 25 Nov 2022 20:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669409454
