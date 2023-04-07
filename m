Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499E7EBC
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 03:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECA65C433D2
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 03:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680838686;
	bh=Pkp+OUPjOgtncJgoGfp5on2bFro7ki/a5/8YRqjhYFQ=;
	h=To:Subject:From:Date:From;
	b=rwsfOA9Jpt7/lSFdemJn4Lu3yW2566GubvBX9w49oi65eLql8hiJ9DuJYlZrXgCdj
	 d4xb/bpCcZAlTcesImAqFODIQEI00lU4SNmoIOgybrn5l1+v3F4Zfuvp9uHHw3qPHs
	 rL+M9qkDhDb6VScPrrLGKDgwaruWTeYNmhMaNKIhX6ds2nsb0g7GKeiXi14f8YE+00
	 HcIslx90P/CcKRv+OuhOC+9eEborepUN4W4MmN5W9bs04Bt+1mrABSA4nUz4zbqIOh
	 9iKT/YYhquHuM3Uj2Vu00JgSAxgs0pqKb7Yt8s86FDi+Vr7VevSD7j30qe4dOUwDZj
	 aGzGqZ/sT4PIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF019C76196
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 03:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168083868577.20681.607284083821906339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67ef8ee2d86ddefcc9e9336f95081c0314ff0653d028d72debe8f63705758e26
Date: Fri, 07 Apr 2023 03:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680838685
