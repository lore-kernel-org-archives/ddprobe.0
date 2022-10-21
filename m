Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7F196102
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 17:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E958C433C1
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666374053;
	bh=bs05l8y4yNf2YVmKdxHXomVYwa2aSCvu6R2RhnO38NQ=;
	h=To:Subject:From:Date:From;
	b=buXZIhUBbxFHud717I8HX+kn68izxdE7WaoxPITat620ixifIhZZZ++YdsYU8Q+ba
	 R4KABnlheyipGFgCGZ7Oz3nOEIbOcRD69b72aGy+h6lE8GgN0H6q4jrV8oweSRhfel
	 kxmyfKjPuEn/oPVJUN0pWkttzSAWRliVgHoYeepQinkUA8w2gfujPUkC4Yi8qzlcoC
	 Te3CRlwZ18lI/oBOVm7Z6o1djiiqmPE2SNfPaqRO/IkhvF6EHpR1/AikSAO/hifoI7
	 t1lJWDfcRLwvrIsqAtusB9louVKBbjSe7+tjPmXGDsVWQmUXizAmlrde7AV/rM1j/5
	 FkfZoKI1xLn7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5713BFA373E
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 17:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166637405333.26602.13246149839420811508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22a170fdb37101e9352502b51ee700800e14cc694d13601bd415a2dfdb3e17d1
Date: Fri, 21 Oct 2022 17:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666374053
