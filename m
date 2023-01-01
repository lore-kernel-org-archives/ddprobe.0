Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB9457E
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 00:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C974C433EF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 00:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672534287;
	bh=7J/xqeX26zzVtWkeZAOy5kwFGGPCef9rubE8X1r1Px8=;
	h=To:Subject:From:Date:From;
	b=HagrgaIsPgcE7ZyPGEH/yXBXzK5PO/hZ5CZZGFkQ9t1iTs2TrmdzLSUbd+SGfIdmL
	 iob8k1tVIwHuprZ2AvVgk3ykKCCC/zILFZXEQcwAT7HP6V3GiY4etfcmUqi7c97Kdu
	 b7f6Zn9wftV4YRmPQtSD7lzsV2OqezGbF+VnU2gQ8cQ3+MAhsCuHcVUAZKmOj3IeT/
	 7IoCE2Zyu2tsWjOaSQFaHjw7/X9LheXhyAmU8TELxR+TG/FbdFNbfzCXsHLeYQpaPg
	 U3oIWLup/iIbaNP8kFks5bjNWGxVm9Zqopq+XfdzkHWN5NwJxN1UxOazAYZa/p9t/H
	 IYcNTVLaAb/vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FF88C4332F
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 00:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167253428738.6657.12886713540794484290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba69611f45bf858ecb557802b63851610d1e146a990e2fef86f59d9de9938338
Date: Sun, 01 Jan 2023 00:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672534287
