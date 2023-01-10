Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10F0C17E5
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 05:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1E0C433D2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 05:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673328087;
	bh=xuVSD2ZokdgV4QEFN321ULZGpftBUNkC7ko9csNLLP0=;
	h=To:Subject:From:Date:From;
	b=FEY0urt7XH/G4IEZZ1yD6IUgN7koeqzjQO3O1lCmdDaMlNDM1A5a0ADfT5lCezHzo
	 pJpTGUQzz8X70zP3fnKTjzMMbFQoasTFna5dO00ZRr4GR4mtQLjYjbwv7mGBtoVx7N
	 tPn0Ysb5FTa52Xbcd5Kq+XgDfSHOLL/ndkBW3f5KVTWDXjRXPfQdT/p9Up9u7xoCui
	 THDCz/dQvKfvwYOJv2UaqqI/8FGv+chTci6uvpVMSgk4SpojnzvSU9s1jcoim98MF3
	 GhLxvu71NQ05rBtiPysp/jd/ETX92z/qrcjZbsodH20krwKu1SAvsKMgLNo+a+Tbst
	 0AmbJmTZ3nOsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A203C46467
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 05:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167332808755.3691.10317520088571814959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 173c495e6621a51dc268b9d142bc03d69a73643daa54369b14d7d8bb9d7f0679
Date: Tue, 10 Jan 2023 05:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673328087
