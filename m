Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 313AD256E
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 23:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8AB9C433D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 23:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674255725;
	bh=v7Uu/YFq6Q+13zk0O2H05WNywS0m3LVOQZalySJo6gE=;
	h=To:Subject:From:Date:From;
	b=eg30gEEdsbOR0EHg8qvoCy7k7mCV5E2Q7Z9YBz6Tbz5HsfJP4y8LifKKw4Nq81n4s
	 721+i4ez7u23PCobHaE9abJ6+nrU7R826LhBOZrrc8uKerKoPHcHu49/6WEE4Vsbwx
	 wIAjlmjyoFQNyzQ0muAwxf7QdNxbkRE66Kz7uwApmTHqbKDcHZe7n+GBmHXL1gTps3
	 JvMyWKdwIO1I2PyP2KvDZ59UhoT4ozquyAMc2OjbDxuXOPc3KYteNTfuYZmKt/tpxn
	 mk/X+BqykQrHGYGnDfzt/3SH9F/BfJ0dGC6KKuitH2boqKUc1vSaF5OxT8c7KGkPRI
	 VQvMWLaOTpDBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE78EC05027
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 23:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167425572576.6455.12008773231184313754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1014a7469eb2752ebf7239f0f3ab1656162cf6c5581fed54d10dcd95217b4f7d
Date: Fri, 20 Jan 2023 23:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674255725
