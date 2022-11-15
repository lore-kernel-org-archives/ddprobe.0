Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDF45BA47
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 15:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77625C433D7
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 15:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668526854;
	bh=GVwKeFQeHIZ4BqCpXHUcD2ifOIJB0pBu2FyI2azvXgI=;
	h=To:Subject:From:Date:From;
	b=nNRml82XuYRBME2kmQmDXydR4Y1h9TacapOSKYFsCKen/fiEkABLvVm/QSTZdMuX9
	 rtBtNA3otgXncaV0k9ek1Gv0HjxV0IG5+J9lDwGlBfkr6rhdAzn5uJz/dP1gLt3kCn
	 GqsWU/N5ZwpFxAS/fq/oPp8K1TrqQ79eI3A6SC3EP0t9UaY2y8IWUYyibipe9Jaypz
	 3njfXW59/t3huYy7A6fMuKb8SZwmXVPUr0/a+EFxRPcWFaY4j3ovbKzEBrm00PdFCY
	 IT+80tK3rG+5Fo3i1OmBDEv8OikdkC1JhKI1uvVeWEMhO6U6rKFPfXXkIEci4n6YN8
	 TBbNY7GEhsolw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C461C4332F
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 15:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166852685436.1030.784085686143183251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8d05fe92d43428b6c730b611d84c32eb162c129dd5c22ba8e74b61bec6b3a1d
Date: Tue, 15 Nov 2022 15:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668526854
