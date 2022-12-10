Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1B56185A
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 16:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83BFBC433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 16:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670689287;
	bh=D6HHimVZGoYbOsEmgDMOXhe6NvYo3VXyaJyWRbBxDE0=;
	h=To:Subject:From:Date:From;
	b=twQsK6R2639/xRrZQEqPfyivpt3GBImrqhxtxzQNE/sXHHmpFTPdfLFo+ohEhTRes
	 t3qMCA6n1T3WfwVMcy37udWoHXLOZioG74tlXoBH6URH7ybu0O8jkbAW/rT/PRcrRc
	 os9Nr8snidwPzycYS1ABnoEfa/QAt9359NtlAnNW/GqhLx+aG9fU+1G+Qwc89k2/q2
	 IOSdkCXueN+cLWhI689oXoz5aMyDilGKKdKmciAenyeMrjlOqCRg0jyqnB6GyNfMd8
	 5aVS+BOPgVYDJifbf0U+I9xgjDMxOiVgXQek/erWJ01r0iuakF+DdYRiDx8ljF0ne3
	 SW4Zx+XfQgmZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66C39C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 16:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167068928741.4418.11560430796325303577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b2abcd77f6b0d507dae0c23972e233297d461b1acae6e8c24e754e176f5d861
Date: Sat, 10 Dec 2022 16:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670689287
