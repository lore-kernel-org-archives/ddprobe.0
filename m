Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4DCA1FAF
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 07:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 891BEC433D6
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666077653;
	bh=wWhc5QBqLoL0pqPVEP5Wq7AHlLqjgUWee2+0vc7T+7I=;
	h=To:Subject:From:Date:From;
	b=SZ2S+nMz2YUdTjMgm+m1lPQ81d1FMuOlUn6kJAfpxW8qTja0LG4KXT1r6dkbghirZ
	 sL8Sgd5kmF2G9iXAoV/FJLlKL3PJcPDjN+bnPY2iz4mIwkpu+HuwidtPmnEwjNU8Yk
	 SznxoaZ/CjIj+RJOeFLxfJIr8ZsV6R3GrYv6HHjudkprKQZwY9c7nndeG2TE0WUQnR
	 3woBmxyacs5VJ9b17YLzuR4Fqe1KZe8brC3MmqFKqjIZaRLfiTFAtD0CjdGpYFSyKP
	 osH6kx5nczrTPafNlM/KRU+ES+yoE+/spKg3A8DPjM5iCD/zCMrEE/j0blpFdG1A0b
	 18R/jwnTkQy7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CFE7C4332F
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 07:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166607765343.9759.11044817910816633749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33d6f9f4ac4a44d97e15cdea4cdb7eae6f01f03b4761a8cfd18c8f04deb599c4
Date: Tue, 18 Oct 2022 07:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666077653
