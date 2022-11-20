Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4ADA623
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 02:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D237C433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 02:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668909654;
	bh=K6cxntxFmJCy722DnS6ExUvx1OiY0CW2QOf2INndtOk=;
	h=To:Subject:From:Date:From;
	b=Q6BrPS0HMVjpwsfZKoCjAvA/llMEghSV78QtziaGvbnNTvXV9REcp0Y7YCtNsMr0E
	 caiVBqf3TM4z9E4QqX2XbSVHkLhU6lZHBCGR4hwnYLHBs2innsCcfKqrxvuF/p2AE3
	 u8Ijv8IaHqS7YXDCS+7Rgcw9Vos7FJYeoAOOvqsykgWNJyu2Jgg0RVu2RavpPd86sF
	 +bGa9Q7WosQMNFv+Kb6YiZopH8nJapkBFoFSaheg8ZNER0sLDpCyb7px+PCB2nzI/g
	 Q3LR35+c594Xk+F75Dq8MRUr8YtVJVewj0ZsJxYhgFjBvuYSbFpFEeUIs/9+OgiF+X
	 c6vbTzBfD/Mwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CA77C4332F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 02:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166890965431.30037.9459865246988584906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a67833941b1186f8b2e77ccf9b36c09c4184b894fe8459d84169ffefa3a6ebd
Date: Sun, 20 Nov 2022 02:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668909654
