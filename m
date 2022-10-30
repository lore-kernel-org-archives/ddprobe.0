Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C77222F38
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 13:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E956C433D6
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 13:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667136054;
	bh=dAHkD910g6cVYeAeIGEPvdBK4ENLH1/SMUB63ySgJXM=;
	h=To:Subject:From:Date:From;
	b=N76JZ3ZxsTK0qjW0ksQ1lGcLFYxeiR3pszwgtN+AmZoN70M02/DR0jtlaokxc0oKE
	 UhFEjiIfGoze5MbojiJOmvrTcBDuY0+HwMficz6REIUY+XIySHsw9v/u55yrPXQyzY
	 6utB63H8pVaFjuIwrtVkvUoP1+mr78GVm45uVOunzuSXPdqdfFBtIDcGU+IVx2yBLf
	 yZXfTI4ZNasygO7yGwC5knnqOKDemkSsh1Vl9zG4cL/mPE5fgOZOoPFg7nmSY9uaUj
	 yMqwszkiD5VXWudRmmRHL2yimuuDWbZRvrMgEPF+L7RkTeT9BenXyy3LMtwOYg4mdf
	 pT5Wm1JidyGZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51585C38A02
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 13:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166713605432.30186.4695760202572182181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32629504e7906bd6128758e4e484ca031e8850050695cafb7b854fb4bcf735ae
Date: Sun, 30 Oct 2022 13:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667136054
