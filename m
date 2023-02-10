Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F86EA29
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 08:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D37E7C433EF
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 08:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676018585;
	bh=kwRVXjzjPxyaSNd9pvZ/t7MdoKpSjPyd9uXUI2TP1zk=;
	h=To:Subject:From:Date:From;
	b=G3ViByTqXTW+N+PcgA0DyR+rJEenjigYQVHUbSLIH7vWMuRnBuw5DX3+/SVeVdkgh
	 4pa47jr6sJHpXcvZuJc2AAaCbYDMffPmPmbT7mpJvZGJmtpUkFnpkGy3V8cxACxugC
	 4j5FmujzsNCAIz2f3Rkt8pHat4iWNKtkCPwz1QC/0tDY6Yi2cTECfTfwnM4JqTwaOj
	 TAVB6w7CeK1MJVUPFLwYZP4rZSj8CERwCjqBEYDAvXMzWVFh3lccx0aXQz3gpzLkye
	 e7ajf4MeZD9uLG8hCC+WspAsra55BpJAC/AGpZ6v+azgBKbAPHQtWzMgQbPoaz8F2l
	 fphzJozQ4RK5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8D98C636CD
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 08:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167601858575.8416.10983081600592805013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3a59aabe16ac40266e6fa5c6aacadce2d0b9b3a5846f8f977cb91e8b97330cd
Date: Fri, 10 Feb 2023 08:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676018585
