Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D05AF1382
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 16:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83668C433D7
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 16:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668875454;
	bh=seA8sf0nqQh1XN+0LxFISPrBB48CqAH+kL9DDBsj/Qw=;
	h=To:Subject:From:Date:From;
	b=QywLm+zMmfj381TFptA8DaHZemP3biCDTtPVc6egl17FCLhGzTzmpFHNDCNdZpfNV
	 zOGctl1kfGTnUPqej2TaSDa4WaX0CHG9eRkdzpwnf39x6A+LgiDZ9GPCuk+v0zCVPr
	 FZZDoLceNEss2Q/843vbuZv/CkcJwvFqgWyskjFKLSIX7EmB33+8rbtLwCUuYERYKb
	 KcQdk+T9zTnIpWQbCO3J/NebU0pcybw1ytWvSyHvBBruHswSOysJ5EuNRF2bAcEUn2
	 KSFGhTTgCjv6yrGtk4v9k2FeuWnpzOmcx6A74yPVK+zf1cLqPGyTgYbdwx0MSeyTye
	 Zxfm93EoADNPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69CA5C433FE
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 16:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166887545440.7217.14632146191232976156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d4d2343745b2f63750e81185cb73752ad6800f94e43b09d72e08e1bd9c31d85
Date: Sat, 19 Nov 2022 16:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668875454
