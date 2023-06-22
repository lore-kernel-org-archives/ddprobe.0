Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 111741F182
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 18:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7C92C433C0
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 18:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687457588;
	bh=Fc2RbeuJLbGyB5Ct0zyFuDDR5k7ZhNjMhcAXnjXyCmE=;
	h=To:Subject:From:Date:From;
	b=HvUQKoCifBCNYlKPAxQjAyuL7ogPO13vtwKLZhzHCJoBnL7r7pnx2fOJGXPvGf3rI
	 v4ojTzMjVmNjvDtOddStiAZfClzY22L9YbbyEfPt/8K889AoZOnsDvPyMxvLHf5kSr
	 cNUV3Y3LG+7nJxOHT6lEPxQmnUeQWOYO5gMHwRBgMrXLhDQ5tCKdnelTBX/75pDKPM
	 DGa0NMo/vKfghltGQc7DD5DKEQGuCw6PDvsS12BwWDCbreJmmukzNnA20nI7TsMKtE
	 rCSjzl0MfGecZCJQjvmaHstF1Dj2DO0gO2syaseAcjNwipyBdIsqMpHo472RRYJ9GC
	 42zTfdM7csHhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEE6EB64D8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 18:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168745758869.3568.15092398292465594539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb4e57fd498614c8569937c17a15a95031eb82f31ba5ae42baab7482f4bf6e6d
Date: Thu, 22 Jun 2023 18:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687457588
