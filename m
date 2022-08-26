Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BC1D5382
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 22:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6455AC433C1
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 22:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661553652;
	bh=9na5TQiFXTIxRpEiS6VPUhaAtZddSt+XtQZfyhpgIis=;
	h=To:Subject:From:Date:From;
	b=gJ6KFUqkQB5XYxYfgHhcfc25rWPc9YFxxLQ/wOQG2Rh2fN73tJMlG33gg+icETvII
	 NDVhpVOpxKU1oVxDwi8bU+O5ipgFlBAfX/qKOMdRJY68alEN5UAvIC6hdvjhs9BdXo
	 oemsXLK0zTsvREytZGdZjim98ND8017rHUeIvp7DP6IDy/JvffiqkNENIsqI4V+bmN
	 JSwMB2LlM37PukRp0jWd7ni3MUpaEJQgsGvj3mcy5Rt4eJVtvYsvA1iGbYQDL2x3q3
	 fSvaZCeY3HTOWVkr05ui5AhrsR8DPgUAvp7djK9kfLn0rF5jqhP9w+x/dovJ2yLZQf
	 YPsD4C36C0ntg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EF5DECAAD5
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 22:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166155365231.9782.12181997081169791494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c059a10d20a690115e3bab73655342bd35618be575a470f70534d61286528d2
Date: Fri, 26 Aug 2022 22:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661553652
