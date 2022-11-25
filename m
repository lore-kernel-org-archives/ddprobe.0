Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDEE523A6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 07:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DABCC433C1
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 07:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669362654;
	bh=D0NjIQ2xoghF3ELqEj2F5LZoOMRyy/qYJKey7NTyawo=;
	h=To:Subject:From:Date:From;
	b=c73Wy9cDljuqhqRrytwEIO+/BM98YGFVXc7HYAN8b4R7NUXuIPhCjj8wHz67EOgX9
	 ir/FRmhunuvJsecuIEBKmgOBiWEYmPk/qfQIvSMDFvsgU4edUUMXZJ8tmZbkANMlQ/
	 MC1QHOneocGUPn+O083OimyCUBg/wrYnCfCF3AXEhe4t1wY+qyBFv3fZ8NPUqyz2CF
	 8aUUPjHaqzRYnyOtJzcc6Xy63T0tNmfRyUw6JviMBLk7n+zxxM8uCrE6TsWZHmkOk7
	 aywadth1v1zyt1cYFV9LUKHNMyNQ5Zeh8QsxhvZz8G2vdkzgN+1EGPrIvfD5AeJMkZ
	 h+pcoMGYhOUcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 500C3C4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 07:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166936265432.32026.15775778267368774535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60de2042f63c53519ac41084e85406c7b1aa78fbc7d511699bd44e006a0c07ab
Date: Fri, 25 Nov 2022 07:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669362654
