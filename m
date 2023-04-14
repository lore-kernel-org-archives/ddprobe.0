Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C75D369
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 00:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E73D6C433D2
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 00:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681432865;
	bh=GIqVqaXvp/L+NlCsJy+5avrTA8BN3Tf1xFQXrUANQz0=;
	h=To:Subject:From:Date:From;
	b=ibtqJ9ffd/Rg+YdDWLqSuGqB4JZRiUiroIWx8ltfaMvwclCNAW7GOiiGsTfYc7Z5e
	 Yo2/ke60gGkxrIEcoLh9L4DE38DFIfWnF2Jq9+OlHlrXADYHIkqzAPk9m4b2d76WR9
	 HwtEh7nZd5KtQ7h6mP4gRtg1b2EGeU9mkf8KqGG9Kg7whxE22cXMG/G/I/ZOvjBJ+5
	 oAnKC+OGvQ+EHm21FgV11VTL9nOEkV6LcX30AxIyB58hW0sGp4YzJSMpkhN69betyc
	 w60bdfXpB2yjl2SWkWcCNleu945WrUmSzoSmLEhSp+6poHIY9p6r63s17U2bvWK6uE
	 7dpGILj7JGnVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C78C8C77B6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 00:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168143286578.4853.1792634984115935970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2207a6a059aa75712c34c50580bf033617ffccf6779a0dd0068d31a7fc4a97bf
Date: Fri, 14 Apr 2023 00:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681432865
