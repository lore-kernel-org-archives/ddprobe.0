Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B82134C9E
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 17:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70A8AC433C1
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 17:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665250253;
	bh=V4SVjFlNv+ntdy1VMH0wkGifxyIISuylnWd4sVaXAWs=;
	h=To:Subject:From:Date:From;
	b=RdG0VenLpUPUgLXtUCEtGn10Y2jm8/27ZikGt98T70nETm1TA1oaW6g6kK50QA5MW
	 MN/VrhZnnnPqIK3KhkbDOdZwTsxPTuc5/lLQhRBCVTX3kPVarEY4EtRKGb8MKoZsKt
	 0axie5bYucheBAe4IEUqDoqKgTO3JIzY0IE7Scb0D03FmhaeKhDLpiXAQQmlaT7p1x
	 ejMdj+8vz0whLoB8r748IDpncYYpUIfht9ABDJiQXFcI7s9Ayi/58Ly/G8JZ0qF/Xw
	 ZiaEQ1jjjkwALBvedsU63CevFWmiCu+QBghSe9Tsj7KgkKISZ5WwDEeXmDYTA6CBV0
	 tbEVgxFHc0eew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 553F6C433FE
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 17:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166525025334.3734.10936907794473277220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1dcfefe9f1d7e3d11f37a9961613123e8482b1256d549679067d7453c874afd
Date: Sat, 08 Oct 2022 17:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665250253
