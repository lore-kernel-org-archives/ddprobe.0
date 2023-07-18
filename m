Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56827D50F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 17:11:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F4BC433C8
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 17:11:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689700268;
	bh=cVVWSSxwz9D4BmQlXmNBfwIMDZdR8r+5hc2W5zp+2A4=;
	h=To:Subject:From:Date:From;
	b=D9AYbcDvWgBX/6AAQo5ZuCep+P89PkME3BwhB7X9poLk7cvZJ30tqVihqCPCrlszk
	 xTGLYljY9xQwEkrTgB52Tt3vc4OXj44MTr/N/jBHWqDodOdTiFHW3njNoltLZpsiOx
	 J/7viyt+EhSJlyvf7XDnlNeDzmgdI02sr2LA5/folL0Fk6BEgzBpEvJZJGTIuNxhrs
	 pImkrWRTRgavj46pWarOW89fY6A+HBjsDuDEPyQ6sLd/fU/QdXGCZE/HXqORdfnjxX
	 sORxN0s/eTzd4l0+snUXlHGwVgF5RKBPK7AWgnQT3EF2MdAZTzCnTiSKBGhKqcRFu9
	 ZZoKcqefO90Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5128EB64DC
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 17:11:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168970026873.8508.5587931015632096000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cff93f89b2cec4984ae0251f610c2227515eae4afb53f467a2c3b939ea3dd4bd
Date: Tue, 18 Jul 2023 17:11:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689700268
