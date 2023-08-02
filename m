Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CEF48BE3
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 15:02:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C326DC433C9
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 15:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690988528;
	bh=vKW7d9yUdxxvOlGeY/IaTRXoYqptzfyOi590BXhLh7o=;
	h=To:Subject:From:Date:From;
	b=TG4KInmZUBMnBWt7f2z65c7Fh7SC93AUhmLKt1ya4C04aMlJyLctjm15Q9eIjTtxG
	 zYtHydzQF5JrVifDcAvK6x14z0W+c+mKQdQOEj9WuAGeXYpyXFyWyvvGwoScoLrwjd
	 vNWNVMHzv0NLOPAnh2Q5DYorJqH+f/Nslza52PJFlPlbm5ja2I3Xtcr763h6qMdACy
	 9554b9MtbKF0UqM9HGSAbEbsH3uTKG6m9Pm4gAPeZ7s1Qn/UxYFmi22aMytb28486T
	 qgIHGr7a4G98yDhsSGCDYFCDKmkLkki0S7q3/9KwujPmgScgG+zSWJ5yRE9lN/XT2Q
	 tZ/ogfM0OVfdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A01C04A6A
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 15:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169098852868.13907.12164292056374783724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b394ad345c4598fae0c9fba0aa30f0ed3be0f0be11feea3fd1d752f0f104fa6d
Date: Wed, 02 Aug 2023 15:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690988528
