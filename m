Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD23C23A0
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 05:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80CE1C433F1
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 05:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673329887;
	bh=g0rGX64BxEFZvmD0Q/59578YxBjqAlOgHLzjD+RuWdw=;
	h=To:Subject:From:Date:From;
	b=QY4HrhorXq8RPrpcHjWXGSuj27KE63QCO/60P/BiGkqIRZ9GMH0ZsKl+oTuE/FEIn
	 Q8E5CZ/eIeGsxpJ6Ohyej5Ya/siUlwDYiOq4t9OmCefLACJ7mHXmhm1B1R1NIgC3nR
	 2wxch7e8/JvgBgndDDTcw64KYdnGlXuiDpRNrinE/hqyEt9Giy5ktJslO/SHKU43cq
	 QZrrDQYE4V0ro7FmuonH+Xnu6UuHKt/WYx04fS9pIJXnHfyJzWqq4smC1W1XZGfAFt
	 qFnvZEijeQqm22Eex7EicAzr8xTtBwdrkmd+nPCK9BhxUspNVrgDp+oWBQbKXKiOfB
	 Y/++1Z5QVoHCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67A58C54EBE
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 05:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167332988741.2758.18129767683126716758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acf2870223bdcc11aca9c8add39fc977675f6de8879017b74e0e440abe95b2fc
Date: Tue, 10 Jan 2023 05:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673329887
